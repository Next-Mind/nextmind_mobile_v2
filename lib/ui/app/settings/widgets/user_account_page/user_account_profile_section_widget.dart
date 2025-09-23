import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/ui/app/settings/viewmodels/user_account_viewmodel.dart';
import 'package:nextmind_mobile_v2/ui/app/settings/widgets/user_account_page/user_account_status_card_widget.dart';
import 'package:nextmind_mobile_v2/ui/core/dimens.dart';

class ProfileSection extends StatelessWidget {
  final UserAccountViewmodel viewModel;
  const ProfileSection({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    const gap = Dimens.smallPadding;

    return SingleChildScrollView(
      child: Column(
        children: [
          GridView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: gap,
              crossAxisSpacing: gap,
              childAspectRatio: 1.9,
            ),
            children: [
              ProfileStatCard(
                icon: Icons.male_rounded,
                label: 'Gender',
                value: 'Male',
              ),
              ProfileStatCard(
                icon: Icons.cake_rounded,
                label: 'Age',
                value: viewModel.calculateAge(),
                unit: 'Years',
              ),
              ProfileStatCard(
                icon: Icons.monitor_weight_rounded,
                label: 'Weight',
                value: '76',
                unit: 'kg',
              ),
              ProfileStatCard(
                icon: Icons.height_rounded,
                label: 'Height',
                value: '176',
                unit: 'cm',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
