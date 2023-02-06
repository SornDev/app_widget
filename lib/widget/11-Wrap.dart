import 'package:flutter/material.dart';

class WrapApp extends StatelessWidget {
  const WrapApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap App'),
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Wrap(
              spacing: 10, // ໄລຍະຫ່າງແນວຕັ້ງ
              runSpacing: 10, // ໄລຍະຫ່າງແນວນອນ
              alignment: WrapAlignment
                  .center, // ຈັດໃຫ້ຢູ່ເຄີ່ງກາງ, ຖ້າຢາກໃຫ້ ທັງໝົດຢູ່ເຄີ່ງກາງ ສາມາດໃຊ້ SizedBox ຂອບ, ກຳນົດຄວາມກ້ວາງເປັນ double.infinity
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.amber,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.pink,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                width: 300,
                child: Wrap(
                  children: [
                    Text(
                        "If you are using the rapidly dissolving tablets, dry your hands before opening the blister pack to carefully remove a tablet. Do not push the tablet through the blister pack. Place the tablet on the tongue, allow it to dissolve completely, then swallow it with saliva. Do not crush, split, or break the tablet before taking it. Do not remove the tablet from the blister pack until just before taking. No water is needed to take this medication.Diarrhea can cause dehydration. Drink plenty of fluids and minerals (electrolytes) to replace what is lost. Tell your doctor right away if you develop signs of dehydration (such as extreme thirst, decreased urination, muscle cramps, weakness, fainting). You may also need to change to a bland diet during this time to reduce irritation to your stomachintestines. Consult your doctor or pharmacist for more information."),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                  "If you are using the rapidly dissolving tablets, dry your hands before opening the blister pack to carefully remove a tablet. Do not push the tablet through the blister pack. Place the tablet on the tongue, allow it to dissolve completely, then swallow it with saliva. Do not crush, split, or break the tablet before taking it. Do not remove the tablet from the blister pack until just before taking. No water is needed to take this medication.Diarrhea can cause dehydration. Drink plenty of fluids and minerals (electrolytes) to replace what is lost. Tell your doctor right away if you develop signs of dehydration (such as extreme thirst, decreased urination, muscle cramps, weakness, fainting). You may also need to change to a bland diet during this time to reduce irritation to your stomachintestines. Consult your doctor or pharmacist for more information."),
            ],
          )
        ],
      ),
    );
  }
}
