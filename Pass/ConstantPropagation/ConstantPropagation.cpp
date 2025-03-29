#include "llvm/Pass.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/Type.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/CFG.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include <string>
#include <fstream>
#include <map>
#include <set>
#include <queue>

#include "llvm/IR/InstrTypes.h"

using namespace llvm;
using namespace std;

#define DEBUG_TYPE "ReachingDefinition"

namespace
{



struct ConstantPropagation : public FunctionPass
{
  static char ID;
  ConstantPropagation() : FunctionPass(ID) {}

  bool runOnFunction(Function &F) override
  {

	return true;
	}
}; // end of struct ReachingDefinition
} // end of anonymous namespace

char ConstantPropagation::ID = 0;
static RegisterPass<ConstantPropagation> X("ConstantPropagation", "Constant Propagation Pass",
                                      false /* Only looks at CFG */,
                                      true /* Analysis Pass */);
