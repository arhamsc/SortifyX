// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'package:sortifyx_app/shared/app/app.dart';
import 'package:sortifyx_app/shared/app/widgets/text/text_body_large.dart';
import 'package:sortifyx_app/shared/app/widgets/text/text_body_medium.dart';
import 'package:sortifyx_app/shared/utils/figma_to_flutter_size.dart';

class DocumentsHome extends StatelessWidget {
  DocumentsHome({super.key});

  final form = fb.group(
    {
      "documentSearch": FormControl(
        value: "",
      ),
    },
  );

  @override
  Widget build(BuildContext context) {
    return RootScaffold(
      body: Column(
        children: [
          /* Search Bar */
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextTitleSmall(
                text: "Search",
              ),
              ReactiveFormBuilder(
                form: () => form,
                builder: (context, formGroup, child) {
                  return MyTextfield(
                    variant: 2,
                    label: "",
                    hintText: "Search document",
                    formFieldName: "documentSearch",
                    suffixIcon: Icon(
                      Icons.search,
                      size: 24.sp,
                      color: colors(context).lightBG,
                    ),
                  );
                },
              )
            ],
          ),
          SizedBoxSeparator(
            height: getHeight(24),
          ),
          SizedBox(
            height: getHeight(150),
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: Icon(
                    Icons.filter_list,
                    color: colors(context).tertiaryDefault,
                    size: 24.sp,
                  ),
                ),
                Positioned(
                  left: getWidth(32),
                  top: getHeight(25),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: getWidth(275),
                          height: getHeight(40),
                          child: Row(
                            children: [
                              Expanded(
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  // alignment: WrapAlignment.center,
                                  children: [
                                    FilterMainChip(
                                      "Tag",
                                      onPressed: () {},
                                    ),
                                    const Gap(10),
                                    FilterMainChip(
                                      "Name",
                                      onPressed: () {},
                                    ),
                                    const Gap(10),
                                    FilterMainChip(
                                      "Month",
                                      onPressed: () {},
                                    ),
                                    const Gap(10),
                                    FilterMainChip(
                                      "Location",
                                      onPressed: () {},
                                    ),
                                    const Gap(10),
                                    FilterMainChip(
                                      "Doc Type",
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                              ),
                              const Icon(Icons.arrow_right),
                            ],
                          ),
                        ),
                        const Gap(15),
                        /* Sub filters */
                        SizedBox(
                          width: getWidth(275),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Wrap(
                              spacing: 10.sp,
                              alignment: WrapAlignment.center,
                              children: [
                                FilterSubChip(
                                  "S C Arham",
                                  selected: true,
                                  onSelected: (val) => {},
                                ),
                                FilterSubChip(
                                  "S C Arham",
                                  selected: true,
                                  onSelected: (val) => {},
                                ),
                                FilterSubChip(
                                  "S C Arham",
                                  selected: true,
                                  onSelected: (val) => {},
                                ),
                                FilterSubChip(
                                  "S C Arham",
                                  selected: true,
                                  onSelected: (val) => {},
                                ),
                                FilterSubChip(
                                  "S C Arham",
                                  selected: true,
                                  onSelected: (val) => {},
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FilterSubChip extends StatefulWidget {
  const FilterSubChip(
    this.label, {
    super.key,
    this.onSelected,
    required this.selected,
    this.disabled = false,
  });

  final String label;
  final Function(bool val)? onSelected;
  final bool disabled;
  final bool selected;

  @override
  State<FilterSubChip> createState() => _FilterSubChipState();
}

class _FilterSubChipState extends State<FilterSubChip> {
  bool selected = false;
  void select() {
    setState(() {
      selected = !selected;
    });
  }

  @override
  Widget build(BuildContext context) {
    assert(
      !(widget.onSelected == null && widget.disabled == false),
      "Provide disabled or onPressed function.",
    );
    return FilterChip(
      label: TextBodyMedium(
        widget.label,
        textColor: selected ? colors(context).lightBG : null,
      ),
      backgroundColor: colors(context).lightBG,
      side: BorderSide(
        color: colors(context).tertiaryDefault!,
      ),
      selected: selected,
      selectedColor: colors(context).tertiaryDefault,
      checkmarkColor: colors(context).quaternaryDefault,
      elevation: 0,
      onSelected: widget.disabled
          ? null
          : (val) {
              select();
              widget.onSelected != null ? widget.onSelected!(val) : null;
            },
    );
  }
}

class FilterMainChip extends StatelessWidget {
  const FilterMainChip(
    this.label, {
    super.key,
    this.onPressed,
    this.disabled = false,
  });
  final String label;
  final Function()? onPressed;
  final bool disabled;

  @override
  Widget build(BuildContext context) {
    assert(
      !(onPressed == null && disabled == false),
      "Provide disabled or onPressed function.",
    );
    return ActionChip(
      label: TextBodyLarge(
        label,
      ),
      elevation: 0,
      labelPadding: EdgeInsets.symmetric(
        horizontal: getWidth(5),
      ),
      avatar: Icon(
        Icons.arrow_drop_down,
        color: colors(context).tertiaryDefault,
      ),
      backgroundColor: colors(context).lightBG,
      color: const MaterialStatePropertyAll(Colors.transparent),
      onPressed: disabled ? null : onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.sp),
        side: BorderSide(
          color: colors(context).tertiaryDefault!,
          width: 0.5,
        ),
      ),
    );
  }
}
