import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class WorkoutAnalysisPage extends StatefulWidget {
  final List<String> selectedGoals;
  final String fitnessLevel;
  final int workoutDuration;
  final String focusArea;

  const WorkoutAnalysisPage({
    super.key,
    required this.selectedGoals,
    required this.fitnessLevel,
    required this.workoutDuration,
    required this.focusArea,
  });

  @override
  State<WorkoutAnalysisPage> createState() => _WorkoutAnalysisPageState();
}

class _WorkoutAnalysisPageState extends State<WorkoutAnalysisPage> {
  String _analysisResult = '';
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _fetchAnalysis();
  }

  Future<void> _fetchAnalysis() async {
    setState(() {
      _isLoading = true;
    });

    try {
      // 构建提示词
      final prompt = _buildPrompt();

      // 调用智谱AI API
      final response = await http.post(
        Uri.parse('https://open.bigmodel.cn/api/paas/v4/chat/completions'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ddeaef730bf34ae698870dd985f24804.u1HKw8QYA7q6NRQc',
        },
        body: json.encode({
          'model': 'GLM-4-Flash',
          'messages': [
            {
              'role': 'user',
              'content': prompt,
            }
          ],
          'temperature': 0.7,
        }),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final content = data['choices'][0]['message']['content'] as String;
        setState(() {
          _analysisResult = content;
          _isLoading = false;
        });
      } else {
        setState(() {
          _analysisResult = 'Error: ${response.statusCode}\n${response.body}';
          _isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        _analysisResult = 'Error occurred: $e';
        _isLoading = false;
      });
    }
  }

  String _buildPrompt() {
    final goalsText = widget.selectedGoals.isEmpty
        ? 'Not specified'
        : widget.selectedGoals.join(', ');
    final levelText = widget.fitnessLevel.isEmpty ? 'Not specified' : widget.fitnessLevel;
    final focusText = widget.focusArea.isEmpty ? 'Not specified' : widget.focusArea;

    return '''
Please provide a comprehensive workout analysis and recommendations based on the following user preferences:

**Fitness Goals:** $goalsText
**Fitness Level:** $levelText
**Workout Duration:** ${widget.workoutDuration} minutes per session
**Focus Areas:** $focusText

Please provide:
1. A personalized workout plan recommendation
2. Specific exercises suitable for their fitness level
3. Training frequency suggestions
4. Tips for achieving their goals
5. Any precautions or considerations

Please respond in English and be detailed and professional.
''';
  }

  @override
  Widget build(BuildContext context) {
    final safeAreaTop = MediaQuery.of(context).padding.top;

    return Scaffold(
      backgroundColor: const Color(0xFFD3DAFF),
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
        title: Stack(
          children: [
            Text(
              'Workout Analysis',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 3
                  ..color = Colors.black,
              ),
            ),
            const Text(
              'Workout Analysis',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        leading: IconButton(
          icon: Stack(
            alignment: Alignment.center,
            children: [
              Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 28,
              ),
              const Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 24,
              ),
            ],
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.only(
              top: safeAreaTop + AppBar().preferredSize.height + 20,
              left: 20,
              right: 20,
              bottom: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSummaryCard(),
                const SizedBox(height: 20),
                _buildAnalysisCard(),
              ],
            ),
          ),
          if (_isLoading)
            Container(
              color: Colors.black.withOpacity(0.3),
              child: const Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF8B5CF6)),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildSummaryCard() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Your Preferences',
            style: TextStyle(
              color: Color(0xFF2C2C2C),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          _buildSummaryItem('Fitness Goals:', widget.selectedGoals.isEmpty ? 'Not specified' : widget.selectedGoals.join(', ')),
          const SizedBox(height: 12),
          _buildSummaryItem('Fitness Level:', widget.fitnessLevel.isEmpty ? 'Not specified' : widget.fitnessLevel),
          const SizedBox(height: 12),
          _buildSummaryItem('Workout Duration:', '${widget.workoutDuration} minutes'),
          const SizedBox(height: 12),
          _buildSummaryItem('Focus Areas:', widget.focusArea.isEmpty ? 'Not specified' : widget.focusArea),
        ],
      ),
    );
  }

  Widget _buildSummaryItem(String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 120,
          child: Text(
            label,
            style: const TextStyle(
              color: Color(0xFF2C2C2C),
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: const TextStyle(
              color: Color(0xFF2C2C2C),
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildAnalysisCard() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'AI Workout Analysis',
            style: TextStyle(
              color: Color(0xFF2C2C2C),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          if (_isLoading)
            const Center(
              child: Padding(
                padding: EdgeInsets.all(40.0),
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF8B5CF6)),
                ),
              ),
            )
          else if (_analysisResult.isEmpty)
            const Text(
              'No analysis available',
              style: TextStyle(
                color: Color(0xFF2C2C2C),
                fontSize: 16,
              ),
            )
          else
            Text(
              _analysisResult,
              style: const TextStyle(
                color: Color(0xFF2C2C2C),
                fontSize: 16,
                height: 1.6,
              ),
            ),
        ],
      ),
    );
  }
}

