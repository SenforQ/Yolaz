import 'package:flutter/material.dart';
import 'workout_analysis_page.dart';

class GroupPage extends StatefulWidget {
  const GroupPage({super.key});

  @override
  State<GroupPage> createState() => _GroupPageState();
}

class _GroupPageState extends State<GroupPage> {
  // 健身目标（多选）
  final Set<String> _selectedGoals = {};

  // 健身水平（单选）
  String? _selectedLevel;

  // 训练时长（5-90分钟）
  double _workoutDuration = 30.0;

  // 训练重点区域
  final TextEditingController _focusAreaController = TextEditingController();

  final List<String> _fitnessGoals = [
    'Lose Weight',
    'Build Muscle',
    'General Fitness',
    'Get Stronger',
  ];

  @override
  void dispose() {
    _focusAreaController.dispose();
    super.dispose();
  }

  void _toggleGoal(String goal) {
    setState(() {
      if (_selectedGoals.contains(goal)) {
        _selectedGoals.remove(goal);
      } else {
        _selectedGoals.add(goal);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFFD3DAFF),
      body: Column(
        children: [
          Image.asset(
            'assets/img_ai_coach_bg.webp',
            width: screenWidth,
            fit: BoxFit.fitWidth,
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildFitnessGoalSection(),
                  const SizedBox(height: 30),
                  _buildFitnessLevelSection(),
                  const SizedBox(height: 30),
                  _buildWorkoutDurationSection(),
                  const SizedBox(height: 30),
                  _buildFocusAreaSection(),
                  const SizedBox(height: 40),
                  _buildSubmitButton(),
                  const SizedBox(height: 40 + 60),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFitnessGoalSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "What's your main fitness goal?",
          style: TextStyle(
            color: Color(0xFF2C2C2C),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: _fitnessGoals.map((goal) {
            final isSelected = _selectedGoals.contains(goal);
            return GestureDetector(
              onTap: () => _toggleGoal(goal),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                decoration: BoxDecoration(
                  color: isSelected ? const Color(0xFFADD8E6) : Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: isSelected ? const Color(0xFF8B5CF6) : const Color(0xFFADD8E6),
                    width: isSelected ? 2 : 1,
                  ),
                ),
                child: Text(
                  goal,
                  style: TextStyle(
                    color: isSelected ? Colors.white : const Color(0xFFADD8E6),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildFitnessLevelSection() {
    final levels = [
      {'image': 'assets/img_beginner.webp', 'label': 'normal'},
      {'image': 'assets/img_intermediate.webp', 'label': 'good'},
      {'image': 'assets/img_advanced.webp', 'label': 'nice'},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "What's your fitness level?",
          style: TextStyle(
            color: Color(0xFF2C2C2C),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: levels.map((level) {
            final isSelected = _selectedLevel == level['label'];
            return GestureDetector(
              onTap: () {
                setState(() {
                  _selectedLevel = level['label'] as String;
                });
              },
              child: Container(
                width: 100,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  gradient: isSelected
                      ? const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFFD3DAFF),
                            Color(0xFFB8C4FF),
                          ],
                        )
                      : null,
                  color: isSelected ? null : Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: isSelected ? const Color(0xFF8B5CF6) : Colors.black,
                    width: isSelected ? 3 : 1,
                  ),
                ),
                child: Column(
                  children: [
                    Image.asset(
                      level['image'] as String,
                      width: 60,
                      height: 60,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      level['label'] as String,
                      style: TextStyle(
                        color: isSelected ? Colors.white : const Color(0xFF2C2C2C),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildWorkoutDurationSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "How long do you want each workout to be?",
          style: TextStyle(
            color: Color(0xFF2C2C2C),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        LayoutBuilder(
          builder: (context, constraints) {
            final progress = (_workoutDuration - 5) / (90 - 5);
            return GestureDetector(
              onHorizontalDragUpdate: (details) {
                final localPosition = details.localPosition;
                final progressWidth = constraints.maxWidth;
                final newProgress = (localPosition.dx / progressWidth).clamp(0.0, 1.0);
                setState(() {
                  _workoutDuration = 5 + (newProgress * (90 - 5));
                });
              },
              onTapDown: (details) {
                final localPosition = details.localPosition;
                final progressWidth = constraints.maxWidth;
                final newProgress = (localPosition.dx / progressWidth).clamp(0.0, 1.0);
                setState(() {
                  _workoutDuration = 5 + (newProgress * (90 - 5));
                });
              },
              child: Stack(
                children: [
                  // 未填充部分（浅蓝色）
                  Container(
                    width: constraints.maxWidth,
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xFFBFECFF),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  // 填充部分（紫色）
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: FractionallySizedBox(
                        widthFactor: progress,
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: const Color(0xFF7300FF),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // 分钟数文本
                  Positioned.fill(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '${_workoutDuration.toInt()}mins',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                offset: Offset(1, 1),
                                blurRadius: 2,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildFocusAreaSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Please write down the areas you want to focus on training.",
          style: TextStyle(
            color: Color(0xFF2C2C2C),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: TextField(
            controller: _focusAreaController,
            maxLines: 4,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
            decoration: InputDecoration(
              hintText: 'I want to work on my back and reduce my body fat percentage.',
              hintStyle: const TextStyle(
                color: Color(0xFF909291),
                fontSize: 16,
              ),
              contentPadding: const EdgeInsets.all(16),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSubmitButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context)
              .push(
                MaterialPageRoute(
                  builder: (context) => WorkoutAnalysisPage(
                    selectedGoals: _selectedGoals.toList(),
                    fitnessLevel: _selectedLevel ?? '',
                    workoutDuration: _workoutDuration.toInt(),
                    focusArea: _focusAreaController.text,
                  ),
                ),
              )
              .then((_) => _resetForm());
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF8B5CF6),
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 4,
        ),
        child: const Text(
          'Submit',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  void _resetForm() {
    setState(() {
      _selectedGoals.clear();
      _selectedLevel = null;
      _workoutDuration = 30.0;
      _focusAreaController.clear();
    });
  }
}

