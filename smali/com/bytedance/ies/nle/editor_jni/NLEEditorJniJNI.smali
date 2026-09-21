.class public Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 2599
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->swig_module_init()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native ChangeBits_clearChange(JLcom/bytedance/ies/nle/editor_jni/ChangeBits;)V
.end method

.method public static final native ChangeBits_hasChange__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/ChangeBits;)Z
.end method

.method public static final native ChangeBits_hasChange__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/ChangeBits;I)Z
.end method

.method public static final native ChangeBits_markChange(JLcom/bytedance/ies/nle/editor_jni/ChangeBits;I)V
.end method

.method public static final native ChangeBits_toString(JLcom/bytedance/ies/nle/editor_jni/ChangeBits;)Ljava/lang/String;
.end method

.method public static final native ChangeBits_unmarkChange(JLcom/bytedance/ies/nle/editor_jni/ChangeBits;I)V
.end method

.method public static final native INLEMonitor_change_ownership(Lcom/bytedance/ies/nle/editor_jni/INLEMonitor;JZ)V
.end method

.method public static final native INLEMonitor_director_connect(Lcom/bytedance/ies/nle/editor_jni/INLEMonitor;JZZ)V
.end method

.method public static final native INLEMonitor_onEvent(JLcom/bytedance/ies/nle/editor_jni/INLEMonitor;Ljava/lang/String;ILjava/lang/String;J)V
.end method

.method public static final native INLEMonitor_onEventSwigExplicitINLEMonitor(JLcom/bytedance/ies/nle/editor_jni/INLEMonitor;Ljava/lang/String;ILjava/lang/String;J)V
.end method

.method public static final native MapStrNLENodeSPtrConst_Iterator_getKey(JLcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtrConst$Iterator;)Ljava/lang/String;
.end method

.method public static final native MapStrNLENodeSPtrConst_Iterator_getNextUnchecked(JLcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtrConst$Iterator;)J
.end method

.method public static final native MapStrNLENodeSPtrConst_Iterator_getValue(JLcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtrConst$Iterator;)J
.end method

.method public static final native MapStrNLENodeSPtrConst_Iterator_isNot(JLcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtrConst$Iterator;JLcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtrConst$Iterator;)Z
.end method

.method public static final native MapStrNLENodeSPtrConst_Iterator_setValue(JLcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtrConst$Iterator;JLcom/bytedance/ies/nle/editor_jni/NLENode;)V
.end method

.method public static final native MapStrNLENodeSPtrConst_begin(JLcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtrConst;)J
.end method

.method public static final native MapStrNLENodeSPtrConst_clear(JLcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtrConst;)V
.end method

.method public static final native MapStrNLENodeSPtrConst_containsImpl(JLcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtrConst;Ljava/lang/String;)Z
.end method

.method public static final native MapStrNLENodeSPtrConst_end(JLcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtrConst;)J
.end method

.method public static final native MapStrNLENodeSPtrConst_find(JLcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtrConst;Ljava/lang/String;)J
.end method

.method public static final native MapStrNLENodeSPtrConst_isEmpty(JLcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtrConst;)Z
.end method

.method public static final native MapStrNLENodeSPtrConst_putUnchecked(JLcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtrConst;Ljava/lang/String;JLcom/bytedance/ies/nle/editor_jni/NLENode;)V
.end method

.method public static final native MapStrNLENodeSPtrConst_removeUnchecked(JLcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtrConst;JLcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtrConst$Iterator;)V
.end method

.method public static final native MapStrNLENodeSPtrConst_sizeImpl(JLcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtrConst;)I
.end method

.method public static final native MapStrNLENodeSPtr_Iterator_getKey(JLcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;)Ljava/lang/String;
.end method

.method public static final native MapStrNLENodeSPtr_Iterator_getNextUnchecked(JLcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;)J
.end method

.method public static final native MapStrNLENodeSPtr_Iterator_getValue(JLcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;)J
.end method

.method public static final native MapStrNLENodeSPtr_Iterator_isNot(JLcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;JLcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;)Z
.end method

.method public static final native MapStrNLENodeSPtr_Iterator_setValue(JLcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;JLcom/bytedance/ies/nle/editor_jni/NLENode;)V
.end method

.method public static final native MapStrNLENodeSPtr_begin(JLcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;)J
.end method

.method public static final native MapStrNLENodeSPtr_clear(JLcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;)V
.end method

.method public static final native MapStrNLENodeSPtr_containsImpl(JLcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;Ljava/lang/String;)Z
.end method

.method public static final native MapStrNLENodeSPtr_end(JLcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;)J
.end method

.method public static final native MapStrNLENodeSPtr_find(JLcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;Ljava/lang/String;)J
.end method

.method public static final native MapStrNLENodeSPtr_isEmpty(JLcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;)Z
.end method

.method public static final native MapStrNLENodeSPtr_putUnchecked(JLcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;Ljava/lang/String;JLcom/bytedance/ies/nle/editor_jni/NLENode;)V
.end method

.method public static final native MapStrNLENodeSPtr_removeUnchecked(JLcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;JLcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;)V
.end method

.method public static final native MapStrNLENodeSPtr_sizeImpl(JLcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;)I
.end method

.method public static final native MapStrStr_Iterator_getKey(JLcom/bytedance/ies/nle/editor_jni/MapStrStr$Iterator;)Ljava/lang/String;
.end method

.method public static final native MapStrStr_Iterator_getNextUnchecked(JLcom/bytedance/ies/nle/editor_jni/MapStrStr$Iterator;)J
.end method

.method public static final native MapStrStr_Iterator_getValue(JLcom/bytedance/ies/nle/editor_jni/MapStrStr$Iterator;)Ljava/lang/String;
.end method

.method public static final native MapStrStr_Iterator_isNot(JLcom/bytedance/ies/nle/editor_jni/MapStrStr$Iterator;JLcom/bytedance/ies/nle/editor_jni/MapStrStr$Iterator;)Z
.end method

.method public static final native MapStrStr_Iterator_setValue(JLcom/bytedance/ies/nle/editor_jni/MapStrStr$Iterator;Ljava/lang/String;)V
.end method

.method public static final native MapStrStr_begin(JLcom/bytedance/ies/nle/editor_jni/MapStrStr;)J
.end method

.method public static final native MapStrStr_clear(JLcom/bytedance/ies/nle/editor_jni/MapStrStr;)V
.end method

.method public static final native MapStrStr_containsImpl(JLcom/bytedance/ies/nle/editor_jni/MapStrStr;Ljava/lang/String;)Z
.end method

.method public static final native MapStrStr_end(JLcom/bytedance/ies/nle/editor_jni/MapStrStr;)J
.end method

.method public static final native MapStrStr_find(JLcom/bytedance/ies/nle/editor_jni/MapStrStr;Ljava/lang/String;)J
.end method

.method public static final native MapStrStr_isEmpty(JLcom/bytedance/ies/nle/editor_jni/MapStrStr;)Z
.end method

.method public static final native MapStrStr_putUnchecked(JLcom/bytedance/ies/nle/editor_jni/MapStrStr;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static final native MapStrStr_removeUnchecked(JLcom/bytedance/ies/nle/editor_jni/MapStrStr;JLcom/bytedance/ies/nle/editor_jni/MapStrStr$Iterator;)V
.end method

.method public static final native MapStrStr_sizeImpl(JLcom/bytedance/ies/nle/editor_jni/MapStrStr;)I
.end method

.method public static final native NLEAIMatting_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLEAIMatting_clone(JLcom/bytedance/ies/nle/editor_jni/NLEAIMatting;)J
.end method

.method public static final native NLEAIMatting_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLEAIMatting_getSegment(JLcom/bytedance/ies/nle/editor_jni/NLEAIMatting;)J
.end method

.method public static final native NLEAIMatting_setSegment(JLcom/bytedance/ies/nle/editor_jni/NLEAIMatting;JLcom/bytedance/ies/nle/editor_jni/NLESegmentAIMatting;)V
.end method

.method public static final native NLEAutoFillFrame_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLEAutoFillFrame_clone(JLcom/bytedance/ies/nle/editor_jni/NLEAutoFillFrame;)J
.end method

.method public static final native NLEAutoFillFrame_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLEAutoFillFrame_getSegment(JLcom/bytedance/ies/nle/editor_jni/NLEAutoFillFrame;)J
.end method

.method public static final native NLEAutoFillFrame_setSegment(JLcom/bytedance/ies/nle/editor_jni/NLEAutoFillFrame;JLcom/bytedance/ies/nle/editor_jni/NLESegmentAutoFillFrame;)V
.end method

.method public static final native NLEBranchListener_change_ownership(Lcom/bytedance/ies/nle/editor_jni/NLEBranchListener;JZ)V
.end method

.method public static final native NLEBranchListener_director_connect(Lcom/bytedance/ies/nle/editor_jni/NLEBranchListener;JZZ)V
.end method

.method public static final native NLEBranchListener_onChanged(JLcom/bytedance/ies/nle/editor_jni/NLEBranchListener;)V
.end method

.method public static final native NLEBranch_addCommit(JLcom/bytedance/ies/nle/editor_jni/NLEBranch;JLcom/bytedance/ies/nle/editor_jni/NLECommit;)V
.end method

.method public static final native NLEBranch_clear(JLcom/bytedance/ies/nle/editor_jni/NLEBranch;)V
.end method

.method public static final native NLEBranch_collectResources(JLcom/bytedance/ies/nle/editor_jni/NLEBranch;JLcom/bytedance/ies/nle/editor_jni/VecNLEResourceNodeSPtr;)V
.end method

.method public static final native NLEBranch_getCommits(JLcom/bytedance/ies/nle/editor_jni/NLEBranch;)J
.end method

.method public static final native NLEBranch_getHead(JLcom/bytedance/ies/nle/editor_jni/NLEBranch;)J
.end method

.method public static final native NLEBranch_getHeadNext(JLcom/bytedance/ies/nle/editor_jni/NLEBranch;)J
.end method

.method public static final native NLEBranch_getHeadPrev(JLcom/bytedance/ies/nle/editor_jni/NLEBranch;)J
.end method

.method public static final native NLEBranch_goTo(JLcom/bytedance/ies/nle/editor_jni/NLEBranch;Ljava/lang/String;)J
.end method

.method public static final native NLEBranch_resetToNext__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/NLEBranch;I)J
.end method

.method public static final native NLEBranch_resetToNext__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/NLEBranch;)J
.end method

.method public static final native NLEBranch_resetToPrev__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/NLEBranch;I)J
.end method

.method public static final native NLEBranch_resetToPrev__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/NLEBranch;)J
.end method

.method public static final native NLEBranch_setListener(JLcom/bytedance/ies/nle/editor_jni/NLEBranch;JLcom/bytedance/ies/nle/editor_jni/NLEBranchListener;)V
.end method

.method public static final native NLEBranch_trim(JLcom/bytedance/ies/nle/editor_jni/NLEBranch;JJ)V
.end method

.method public static final native NLEBranch_trimRange(JLcom/bytedance/ies/nle/editor_jni/NLEBranch;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static final native NLEChangeListener_change_ownership(Lcom/bytedance/ies/nle/editor_jni/NLEChangeListener;JZ)V
.end method

.method public static final native NLEChangeListener_director_connect(Lcom/bytedance/ies/nle/editor_jni/NLEChangeListener;JZZ)V
.end method

.method public static final native NLEChangeListener_onChanged(JLcom/bytedance/ies/nle/editor_jni/NLEChangeListener;)V
.end method

.method public static final native NLECherEffect_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLECherEffect_clone(JLcom/bytedance/ies/nle/editor_jni/NLECherEffect;)J
.end method

.method public static final native NLECherEffect_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLECherEffect_getSegment(JLcom/bytedance/ies/nle/editor_jni/NLECherEffect;)J
.end method

.method public static final native NLECherEffect_setSegment(JLcom/bytedance/ies/nle/editor_jni/NLECherEffect;JLcom/bytedance/ies/nle/editor_jni/NLESegmentCherEffect;)V
.end method

.method public static final native NLEChromaChannel_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLEChromaChannel_clone(JLcom/bytedance/ies/nle/editor_jni/NLEChromaChannel;)J
.end method

.method public static final native NLEChromaChannel_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLEChromaChannel_getSegment(JLcom/bytedance/ies/nle/editor_jni/NLEChromaChannel;)J
.end method

.method public static final native NLEChromaChannel_setSegment(JLcom/bytedance/ies/nle/editor_jni/NLEChromaChannel;JLcom/bytedance/ies/nle/editor_jni/NLESegmentChromaChannel;)V
.end method

.method public static final native NLECommit_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLECommit_clone(JLcom/bytedance/ies/nle/editor_jni/NLECommit;)J
.end method

.method public static final native NLECommit_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLECommit_getDescription(JLcom/bytedance/ies/nle/editor_jni/NLECommit;)Ljava/lang/String;
.end method

.method public static final native NLECommit_getModel(JLcom/bytedance/ies/nle/editor_jni/NLECommit;)J
.end method

.method public static final native NLECommit_getTimeStamp(JLcom/bytedance/ies/nle/editor_jni/NLECommit;)J
.end method

.method public static final native NLECommit_getVersion(JLcom/bytedance/ies/nle/editor_jni/NLECommit;)J
.end method

.method public static final native NLECommit_hasDescription(JLcom/bytedance/ies/nle/editor_jni/NLECommit;)Z
.end method

.method public static final native NLECommit_hasTimeStamp(JLcom/bytedance/ies/nle/editor_jni/NLECommit;)Z
.end method

.method public static final native NLECommit_hasVersion(JLcom/bytedance/ies/nle/editor_jni/NLECommit;)Z
.end method

.method public static final native NLECommit_setDescription(JLcom/bytedance/ies/nle/editor_jni/NLECommit;Ljava/lang/String;)V
.end method

.method public static final native NLECommit_setModel(JLcom/bytedance/ies/nle/editor_jni/NLECommit;JLcom/bytedance/ies/nle/editor_jni/NLEModel;)V
.end method

.method public static final native NLECommit_setTimeStamp(JLcom/bytedance/ies/nle/editor_jni/NLECommit;J)V
.end method

.method public static final native NLECommit_setVersion(JLcom/bytedance/ies/nle/editor_jni/NLECommit;J)V
.end method

.method public static final native NLECurveActionBeam_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLECurveActionBeam_clone(JLcom/bytedance/ies/nle/editor_jni/NLECurveActionBeam;)J
.end method

.method public static final native NLECurveActionBeam_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLECurveActionBeam_getCycleTime(JLcom/bytedance/ies/nle/editor_jni/NLECurveActionBeam;)J
.end method

.method public static final native NLECurveActionBeam_hasCycleTime(JLcom/bytedance/ies/nle/editor_jni/NLECurveActionBeam;)Z
.end method

.method public static final native NLECurveActionBeam_setCycleTime(JLcom/bytedance/ies/nle/editor_jni/NLECurveActionBeam;J)V
.end method

.method public static final native NLECurveSpeedCalculator_calculateCubePoint(FJLcom/bytedance/ies/nle/editor_jni/NLEPoint;JLcom/bytedance/ies/nle/editor_jni/NLEPoint;JLcom/bytedance/ies/nle/editor_jni/NLEPoint;JLcom/bytedance/ies/nle/editor_jni/NLEPoint;)J
.end method

.method public static final native NLECurveSpeedCalculator_generateBezierPathLookupTable(JLcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;)J
.end method

.method public static final native NLECurveSpeedCalculator_generateThirdBezierPathPoints(JLcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;)J
.end method

.method public static final native NLECurveSpeedCalculator_getAveActionBeamSpeedRatio(JLcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;)D
.end method

.method public static final native NLECurveSpeedCalculator_getAveCurveSpeedRatio(JLcom/bytedance/ies/nle/editor_jni/NLECurveSpeedCalculator;)D
.end method

.method public static final native NLECurveSpeedCalculator_getBezierPoint(JLcom/bytedance/ies/nle/editor_jni/NLEPoint;JLcom/bytedance/ies/nle/editor_jni/NLEPoint;JJ)J
.end method

.method public static final native NLECurveSpeedCalculator_getSpeedRatioBySeqDelta(JLcom/bytedance/ies/nle/editor_jni/NLECurveSpeedCalculator;JJ)D
.end method

.method public static final native NLECurveSpeedCalculator_recursiveCalculateCubePoint(JLcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;F)J
.end method

.method public static final native NLECurveSpeedCalculator_segmentDelToSequenceDel(JLcom/bytedance/ies/nle/editor_jni/NLECurveSpeedCalculator;JJ)J
.end method

.method public static final native NLECurveSpeedCalculator_segmentPToSequenceP(JLcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;)J
.end method

.method public static final native NLECurveSpeedCalculator_sequenceDelToSegmentDel(JLcom/bytedance/ies/nle/editor_jni/NLECurveSpeedCalculator;JJ)J
.end method

.method public static final native NLECurveSpeedCalculator_splitCurvePoints(JLcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;JJ)J
.end method

.method public static final native NLEEditorListener_change_ownership(Lcom/bytedance/ies/nle/editor_jni/NLEEditorListener;JZ)V
.end method

.method public static final native NLEEditorListener_director_connect(Lcom/bytedance/ies/nle/editor_jni/NLEEditorListener;JZZ)V
.end method

.method public static final native NLEEditorListener_onChanged(JLcom/bytedance/ies/nle/editor_jni/NLEEditorListener;)V
.end method

.method public static final native NLEEditor_addConsumer(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;JLcom/bytedance/ies/nle/editor_jni/NLEEditorListener;)V
.end method

.method public static final native NLEEditor_canRedo(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;)Z
.end method

.method public static final native NLEEditor_canUndo(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;)Z
.end method

.method public static final native NLEEditor_commit(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;)Z
.end method

.method public static final native NLEEditor_done__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;Ljava/lang/String;)Z
.end method

.method public static final native NLEEditor_done__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;)Z
.end method

.method public static final native NLEEditor_exportEditor(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;Ljava/lang/String;)I
.end method

.method public static final native NLEEditor_getAllResources(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;)J
.end method

.method public static final native NLEEditor_getBranch(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;)J
.end method

.method public static final native NLEEditor_getGlobalExtra(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static final native NLEEditor_getModel(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;)J
.end method

.method public static final native NLEEditor_getStageModel(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;)J
.end method

.method public static final native NLEEditor_goTo(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;Ljava/lang/String;)Z
.end method

.method public static final native NLEEditor_importEditor(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;Ljava/lang/String;)I
.end method

.method public static final native NLEEditor_redo__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;I)Z
.end method

.method public static final native NLEEditor_redo__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;)Z
.end method

.method public static final native NLEEditor_removeConsumer(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;JLcom/bytedance/ies/nle/editor_jni/NLEEditorListener;)V
.end method

.method public static final native NLEEditor_resetHead(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;)Z
.end method

.method public static final native NLEEditor_restore(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;Ljava/lang/String;)I
.end method

.method public static final native NLEEditor_setBranchListener(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;JLcom/bytedance/ies/nle/editor_jni/NLEBranchListener;)V
.end method

.method public static final native NLEEditor_setGlobalExtra(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static final native NLEEditor_setListener(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;JLcom/bytedance/ies/nle/editor_jni/NLEEditorListener;)V
.end method

.method public static final native NLEEditor_setModel(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;JLcom/bytedance/ies/nle/editor_jni/NLEModel;)V
.end method

.method public static final native NLEEditor_setSynchronizer(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;J)V
.end method

.method public static final native NLEEditor_store(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;)Ljava/lang/String;
.end method

.method public static final native NLEEditor_trim(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;JJ)V
.end method

.method public static final native NLEEditor_trimRange(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static final native NLEEditor_undo__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;I)Z
.end method

.method public static final native NLEEditor_undo__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;)Z
.end method

.method public static final native NLEFilterName_AI_MATTING_get()Ljava/lang/String;
.end method

.method public static final native NLEFilterName_AUDIO_COMMON_FILTER_get()Ljava/lang/String;
.end method

.method public static final native NLEFilterName_AUDIO_DSP_FILTER_get()Ljava/lang/String;
.end method

.method public static final native NLEFilterName_AUDIO_FADE_FILTER_get()Ljava/lang/String;
.end method

.method public static final native NLEFilterName_AUDIO_LOUDNESS_BALANCE_FILTER_get()Ljava/lang/String;
.end method

.method public static final native NLEFilterName_AUDIO_SAMI_FILTER_get()Ljava/lang/String;
.end method

.method public static final native NLEFilterName_AUDIO_VOLUME_FILTER_get()Ljava/lang/String;
.end method

.method public static final native NLEFilterName_BEAUTFY_FILTER_get()Ljava/lang/String;
.end method

.method public static final native NLEFilterName_BEAUTY_get()Ljava/lang/String;
.end method

.method public static final native NLEFilterName_BRIGHTNESS_get()Ljava/lang/String;
.end method

.method public static final native NLEFilterName_COLOR_CURVES_get()Ljava/lang/String;
.end method

.method public static final native NLEFilterName_COMMON_get()Ljava/lang/String;
.end method

.method public static final native NLEFilterName_CONTRACT_get()Ljava/lang/String;
.end method

.method public static final native NLEFilterName_EFFECT_STICKER_get()Ljava/lang/String;
.end method

.method public static final native NLEFilterName_FADE_get()Ljava/lang/String;
.end method

.method public static final native NLEFilterName_FIGURE_SLIM_get()Ljava/lang/String;
.end method

.method public static final native NLEFilterName_FIGURE_STRETCH_get()Ljava/lang/String;
.end method

.method public static final native NLEFilterName_FIGURE_ZOOM_get()Ljava/lang/String;
.end method

.method public static final native NLEFilterName_HDR_get()Ljava/lang/String;
.end method

.method public static final native NLEFilterName_HIGHLIGHT_get()Ljava/lang/String;
.end method

.method public static final native NLEFilterName_HSL_get()Ljava/lang/String;
.end method

.method public static final native NLEFilterName_LENS_HDR_get()Ljava/lang/String;
.end method

.method public static final native NLEFilterName_LIGHT_SENSATION_get()Ljava/lang/String;
.end method

.method public static final native NLEFilterName_LOG_COLOR_WHEELS_get()Ljava/lang/String;
.end method

.method public static final native NLEFilterName_LUT_get()Ljava/lang/String;
.end method

.method public static final native NLEFilterName_PARTICLE_get()Ljava/lang/String;
.end method

.method public static final native NLEFilterName_PRIMARY_COLOR_WHEELS_get()Ljava/lang/String;
.end method

.method public static final native NLEFilterName_RESHAPE_get()Ljava/lang/String;
.end method

.method public static final native NLEFilterName_SATURATION_get()Ljava/lang/String;
.end method

.method public static final native NLEFilterName_SHADOW_get()Ljava/lang/String;
.end method

.method public static final native NLEFilterName_SHARPEN_get()Ljava/lang/String;
.end method

.method public static final native NLEFilterName_TEMPERATURE_get()Ljava/lang/String;
.end method

.method public static final native NLEFilterName_TONE_get()Ljava/lang/String;
.end method

.method public static final native NLEFilterName_VIDEO_EFFECT_get()Ljava/lang/String;
.end method

.method public static final native NLEFilterName_VIDEO_LENS_HDR_get()Ljava/lang/String;
.end method

.method public static final native NLEFilterName_VIGNETTING_get()Ljava/lang/String;
.end method

.method public static final native NLEFilter_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLEFilter_clone(JLcom/bytedance/ies/nle/editor_jni/NLEFilter;)J
.end method

.method public static final native NLEFilter_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLEFilter_getSegment(JLcom/bytedance/ies/nle/editor_jni/NLEFilter;)J
.end method

.method public static final native NLEFilter_setSegment(JLcom/bytedance/ies/nle/editor_jni/NLEFilter;JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;)V
.end method

.method public static final native NLEInstantMode_InstantStickerRemove_get()Ljava/lang/String;
.end method

.method public static final native NLEInstantMode_InstantStickerScale_get()Ljava/lang/String;
.end method

.method public static final native NLEInstantMode_InstantStickerTransform_get()Ljava/lang/String;
.end method

.method public static final native NLEInstantMode_Key_get()Ljava/lang/String;
.end method

.method public static final native NLEInstantMode_PivotalStickerUUID_get()Ljava/lang/String;
.end method

.method public static final native NLEKeyFrameTransientExtrakey_ChromaChannelIntensity_get()Ljava/lang/String;
.end method

.method public static final native NLEKeyFrameTransientExtrakey_ChromaChannelShadow_get()Ljava/lang/String;
.end method

.method public static final native NLEKeyFrameTransientExtrakey_FilterIntensity_get()Ljava/lang/String;
.end method

.method public static final native NLEKeyFrameTransientExtrakey_MaskCenterX_get()Ljava/lang/String;
.end method

.method public static final native NLEKeyFrameTransientExtrakey_MaskCenterY_get()Ljava/lang/String;
.end method

.method public static final native NLEKeyFrameTransientExtrakey_MaskHeight_get()Ljava/lang/String;
.end method

.method public static final native NLEKeyFrameTransientExtrakey_MaskRotation_get()Ljava/lang/String;
.end method

.method public static final native NLEKeyFrameTransientExtrakey_MaskRoundCorner_get()Ljava/lang/String;
.end method

.method public static final native NLEKeyFrameTransientExtrakey_MaskWidth_get()Ljava/lang/String;
.end method

.method public static final native NLEKeyFrameTransientExtrakey_Maskfeather_get()Ljava/lang/String;
.end method

.method public static final native NLEKeyFrameTransientExtrakey_SlotAlpha_get()Ljava/lang/String;
.end method

.method public static final native NLEKeyFrameTransientExtrakey_SlotRotation_get()Ljava/lang/String;
.end method

.method public static final native NLEKeyFrameTransientExtrakey_SlotScale_get()Ljava/lang/String;
.end method

.method public static final native NLEKeyFrameTransientExtrakey_SlotVolume_get()Ljava/lang/String;
.end method

.method public static final native NLEKeyFrameTransientExtrakey_SlotX_get()Ljava/lang/String;
.end method

.method public static final native NLEKeyFrameTransientExtrakey_SlotY_get()Ljava/lang/String;
.end method

.method public static final native NLEKeyFrameTransientExtrakey_TextBackgroundColor_get()Ljava/lang/String;
.end method

.method public static final native NLEKeyFrameTransientExtrakey_TextColor_get()Ljava/lang/String;
.end method

.method public static final native NLEKeyFrameTransientExtrakey_TextOutlineColor_get()Ljava/lang/String;
.end method

.method public static final native NLEKeyFrameTransientExtrakey_TextOutlineWidth_get()Ljava/lang/String;
.end method

.method public static final native NLEKeyFrameTransientExtrakey_TextShadowColor_get()Ljava/lang/String;
.end method

.method public static final native NLEKeyFrameTransientExtrakey_TextShadowOffsetX_get()Ljava/lang/String;
.end method

.method public static final native NLEKeyFrameTransientExtrakey_TextShadowOffsetY_get()Ljava/lang/String;
.end method

.method public static final native NLEKeyFrameTransientExtrakey_TextShadowSmoothing_get()Ljava/lang/String;
.end method

.method public static final native NLEKeyframeGraphValue_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLEKeyframeGraphValue_addKeyframeGraphPoint(JLcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphValue;JLcom/bytedance/ies/nle/editor_jni/NLEPoint;)V
.end method

.method public static final native NLEKeyframeGraphValue_clearKeyframeGraphPoint(JLcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphValue;)V
.end method

.method public static final native NLEKeyframeGraphValue_clone(JLcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphValue;)J
.end method

.method public static final native NLEKeyframeGraphValue_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLEKeyframeGraphValue_getKeyframeGraphPoints(JLcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphValue;)J
.end method

.method public static final native NLEKeyframeGraphValue_removeKeyframeGraphPoint(JLcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphValue;JLcom/bytedance/ies/nle/editor_jni/NLEPoint;)Z
.end method

.method public static final native NLELoggerListener_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLELoggerListener_change_ownership(Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;JZ)V
.end method

.method public static final native NLELoggerListener_director_connect(Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;JZZ)V
.end method

.method public static final native NLELoggerListener_onLogSwigExplicitNLELoggerListener__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/NLELoggerListener;ILjava/lang/String;J)V
.end method

.method public static final native NLELoggerListener_onLog__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/NLELoggerListener;ILjava/lang/String;J)V
.end method

.method public static final native NLELoggerListener_onLog__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/NLELoggerListener;ILjava/lang/String;)V
.end method

.method public static final native NLELogger_d(JLcom/bytedance/ies/nle/editor_jni/NLELogger;Ljava/lang/String;)V
.end method

.method public static final native NLELogger_e(JLcom/bytedance/ies/nle/editor_jni/NLELogger;Ljava/lang/String;)V
.end method

.method public static final native NLELogger_i(JLcom/bytedance/ies/nle/editor_jni/NLELogger;Ljava/lang/String;)V
.end method

.method public static final native NLELogger_obtain()J
.end method

.method public static final native NLELogger_setDelegate(JLcom/bytedance/ies/nle/editor_jni/NLELogger;JLcom/bytedance/ies/nle/editor_jni/NLELoggerFunc;)V
.end method

.method public static final native NLELogger_setLogLevel(JLcom/bytedance/ies/nle/editor_jni/NLELogger;I)V
.end method

.method public static final native NLELogger_v(JLcom/bytedance/ies/nle/editor_jni/NLELogger;Ljava/lang/String;)V
.end method

.method public static final native NLELogger_w(JLcom/bytedance/ies/nle/editor_jni/NLELogger;Ljava/lang/String;)V
.end method

.method public static final native NLELogger_wtf(JLcom/bytedance/ies/nle/editor_jni/NLELogger;Ljava/lang/String;)V
.end method

.method public static final native NLELokiResourceProtocol_PARAM_EFFECT_ID()Ljava/lang/String;
.end method

.method public static final native NLELokiResourceProtocol_PARAM_PANEL()Ljava/lang/String;
.end method

.method public static final native NLELokiResourceProtocol_PARAM_RESOURCE_ID()Ljava/lang/String;
.end method

.method public static final native NLELokiResourceProtocol_PLATFORM_STRING()Ljava/lang/String;
.end method

.method public static final native NLELokiResourceProtocol_SWIGUpcast(J)J
.end method

.method public static final native NLELokiResourceProtocol_getParameters(JLcom/bytedance/ies/nle/editor_jni/NLELokiResourceProtocol;)J
.end method

.method public static final native NLELokiResourceProtocol_getSourceFrom(JLcom/bytedance/ies/nle/editor_jni/NLELokiResourceProtocol;)Ljava/lang/String;
.end method

.method public static final native NLELokiResourceProtocol_isLokiResource(Ljava/lang/String;)Z
.end method

.method public static final native NLEMVExternalAlgorithmResult_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLEMVExternalAlgorithmResult_clone(JLcom/bytedance/ies/nle/editor_jni/NLEMVExternalAlgorithmResult;)J
.end method

.method public static final native NLEMVExternalAlgorithmResult_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLEMVExternalAlgorithmResult_getAlgorithmName(JLcom/bytedance/ies/nle/editor_jni/NLEMVExternalAlgorithmResult;)Ljava/lang/String;
.end method

.method public static final native NLEMVExternalAlgorithmResult_getMask(JLcom/bytedance/ies/nle/editor_jni/NLEMVExternalAlgorithmResult;)J
.end method

.method public static final native NLEMVExternalAlgorithmResult_getPhoto(JLcom/bytedance/ies/nle/editor_jni/NLEMVExternalAlgorithmResult;)J
.end method

.method public static final native NLEMVExternalAlgorithmResult_getResultInType(JLcom/bytedance/ies/nle/editor_jni/NLEMVExternalAlgorithmResult;)I
.end method

.method public static final native NLEMVExternalAlgorithmResult_hasAlgorithmName(JLcom/bytedance/ies/nle/editor_jni/NLEMVExternalAlgorithmResult;)Z
.end method

.method public static final native NLEMVExternalAlgorithmResult_hasResultInType(JLcom/bytedance/ies/nle/editor_jni/NLEMVExternalAlgorithmResult;)Z
.end method

.method public static final native NLEMVExternalAlgorithmResult_setAlgorithmName(JLcom/bytedance/ies/nle/editor_jni/NLEMVExternalAlgorithmResult;Ljava/lang/String;)V
.end method

.method public static final native NLEMVExternalAlgorithmResult_setMask(JLcom/bytedance/ies/nle/editor_jni/NLEMVExternalAlgorithmResult;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
.end method

.method public static final native NLEMVExternalAlgorithmResult_setPhoto(JLcom/bytedance/ies/nle/editor_jni/NLEMVExternalAlgorithmResult;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
.end method

.method public static final native NLEMVExternalAlgorithmResult_setResultInType(JLcom/bytedance/ies/nle/editor_jni/NLEMVExternalAlgorithmResult;I)V
.end method

.method public static final native NLEManifest_registerNLEModelClass()V
.end method

.method public static final native NLEMask_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLEMask_clone(JLcom/bytedance/ies/nle/editor_jni/NLEMask;)J
.end method

.method public static final native NLEMask_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLEMask_getSegment(JLcom/bytedance/ies/nle/editor_jni/NLEMask;)J
.end method

.method public static final native NLEMask_setSegment(JLcom/bytedance/ies/nle/editor_jni/NLEMask;JLcom/bytedance/ies/nle/editor_jni/NLESegmentMask;)V
.end method

.method public static final native NLEMatrix_relativeHeight_get(JLcom/bytedance/ies/nle/editor_jni/NLEMatrix;)F
.end method

.method public static final native NLEMatrix_relativeHeight_set(JLcom/bytedance/ies/nle/editor_jni/NLEMatrix;F)V
.end method

.method public static final native NLEMatrix_relativeWidth_get(JLcom/bytedance/ies/nle/editor_jni/NLEMatrix;)F
.end method

.method public static final native NLEMatrix_relativeWidth_set(JLcom/bytedance/ies/nle/editor_jni/NLEMatrix;F)V
.end method

.method public static final native NLEMatrix_rotation_get(JLcom/bytedance/ies/nle/editor_jni/NLEMatrix;)F
.end method

.method public static final native NLEMatrix_rotation_set(JLcom/bytedance/ies/nle/editor_jni/NLEMatrix;F)V
.end method

.method public static final native NLEMatrix_startTime_get(JLcom/bytedance/ies/nle/editor_jni/NLEMatrix;)J
.end method

.method public static final native NLEMatrix_startTime_set(JLcom/bytedance/ies/nle/editor_jni/NLEMatrix;J)V
.end method

.method public static final native NLEMatrix_toString(JLcom/bytedance/ies/nle/editor_jni/NLEMatrix;)Ljava/lang/String;
.end method

.method public static final native NLEMatrix_transformX_get(JLcom/bytedance/ies/nle/editor_jni/NLEMatrix;)F
.end method

.method public static final native NLEMatrix_transformX_set(JLcom/bytedance/ies/nle/editor_jni/NLEMatrix;F)V
.end method

.method public static final native NLEMatrix_transformY_get(JLcom/bytedance/ies/nle/editor_jni/NLEMatrix;)F
.end method

.method public static final native NLEMatrix_transformY_set(JLcom/bytedance/ies/nle/editor_jni/NLEMatrix;F)V
.end method

.method public static final native NLEMatrix_transformZ_get(JLcom/bytedance/ies/nle/editor_jni/NLEMatrix;)I
.end method

.method public static final native NLEMatrix_transformZ_set(JLcom/bytedance/ies/nle/editor_jni/NLEMatrix;I)V
.end method

.method public static final native NLEMeasure_performMeasure(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)V
.end method

.method public static final native NLEMediaResourceProtocol_EXTRA_AUTO_UNZIP_get()Ljava/lang/String;
.end method

.method public static final native NLEMediaResourceProtocol_EXTRA_EXTRA_INFO_get()Ljava/lang/String;
.end method

.method public static final native NLEMediaResourceProtocol_EXTRA_FILE_URL_get()Ljava/lang/String;
.end method

.method public static final native NLEMediaResourceProtocol_EXTRA_MD5_get()Ljava/lang/String;
.end method

.method public static final native NLEMediaResourceProtocol_EXTRA_MEDIA_EXTENSION_get()Ljava/lang/String;
.end method

.method public static final native NLEMediaResourceProtocol_EXTRA_PARAM_CACHE_DIR_get()Ljava/lang/String;
.end method

.method public static final native NLEMediaResourceProtocol_EXTRA_PARAM_CHANNEL_ID_get()Ljava/lang/String;
.end method

.method public static final native NLEMediaResourceProtocol_EXTRA_PARAM_DELETE_LOCAL_RES_RECORD_get()Ljava/lang/String;
.end method

.method public static final native NLEMediaResourceProtocol_EXTRA_PARAM_DELETE_LOCAL_RES_get()Ljava/lang/String;
.end method

.method public static final native NLEMediaResourceProtocol_EXTRA_PARAM_DELETE_REMOTE_RES_get()Ljava/lang/String;
.end method

.method public static final native NLEMediaResourceProtocol_EXTRA_PARAM_MEDIA_ITEM_get()Ljava/lang/String;
.end method

.method public static final native NLEMediaResourceProtocol_EXTRA_PARAM_SOURCE_PATH_get()Ljava/lang/String;
.end method

.method public static final native NLEMediaResourceProtocol_KEY_MEDIA_ID_get()Ljava/lang/String;
.end method

.method public static final native NLEMediaResourceProtocol_KEY_STORE_ID_get()Ljava/lang/String;
.end method

.method public static final native NLEMediaResourceProtocol_PLATFORM_STRING_get()Ljava/lang/String;
.end method

.method public static final native NLEMediaResourceProtocol_SWIGUpcast(J)J
.end method

.method public static final native NLEMediaResourceProtocol_getParameters(JLcom/bytedance/ies/nle/editor_jni/NLEMediaResourceProtocol;)J
.end method

.method public static final native NLEMediaResourceProtocol_getSourceFrom(JLcom/bytedance/ies/nle/editor_jni/NLEMediaResourceProtocol;)Ljava/lang/String;
.end method

.method public static final native NLEMediaResourceProtocol_isMediaResource(Ljava/lang/String;)Z
.end method

.method public static final native NLEModel_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLEModel_addTrack(JLcom/bytedance/ies/nle/editor_jni/NLEModel;JLcom/bytedance/ies/nle/editor_jni/NLETrack;)V
.end method

.method public static final native NLEModel_clearTrack(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)V
.end method

.method public static final native NLEModel_clone(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)J
.end method

.method public static final native NLEModel_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLEModel_getAlignMode(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)Ljava/lang/String;
.end method

.method public static final native NLEModel_getAllResources(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)J
.end method

.method public static final native NLEModel_getCanvasRatio(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)F
.end method

.method public static final native NLEModel_getCover(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)J
.end method

.method public static final native NLEModel_getDuration(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)J
.end method

.method public static final native NLEModel_getEffectLayerMax(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)I
.end method

.method public static final native NLEModel_getFirstTrackWithType(JLcom/bytedance/ies/nle/editor_jni/NLEModel;I)J
.end method

.method public static final native NLEModel_getLayerMax(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)I
.end method

.method public static final native NLEModel_getMainTrack__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/NLEModel;Z)J
.end method

.method public static final native NLEModel_getMainTrack__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)J
.end method

.method public static final native NLEModel_getMaxTargetEndExcludeDisabledNode(JLcom/bytedance/ies/nle/editor_jni/NLEModel;Z)J
.end method

.method public static final native NLEModel_getMaxTargetEnd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/NLEModel;JLcom/bytedance/ies/nle/editor_jni/VecNLETrackType;)J
.end method

.method public static final native NLEModel_getMaxTargetEnd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)J
.end method

.method public static final native NLEModel_getMeasuredEndTime(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)J
.end method

.method public static final native NLEModel_getMinTargetStart(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)J
.end method

.method public static final native NLEModel_getRawNLEMatrix(JLcom/bytedance/ies/nle/editor_jni/NLEModel;JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)J
.end method

.method public static final native NLEModel_getSetting(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)J
.end method

.method public static final native NLEModel_getSortedTracks(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)J
.end method

.method public static final native NLEModel_getSortedTracksWithNoNoneTrack(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)J
.end method

.method public static final native NLEModel_getStartTime(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)J
.end method

.method public static final native NLEModel_getThousandFps(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)J
.end method

.method public static final native NLEModel_getTrackBySlot(JLcom/bytedance/ies/nle/editor_jni/NLEModel;JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J
.end method

.method public static final native NLEModel_getTracks(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)J
.end method

.method public static final native NLEModel_hasAlignMode(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)Z
.end method

.method public static final native NLEModel_hasCanvasRatio(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)Z
.end method

.method public static final native NLEModel_hasThousandFps(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)Z
.end method

.method public static final native NLEModel_removeTrack(JLcom/bytedance/ies/nle/editor_jni/NLEModel;JLcom/bytedance/ies/nle/editor_jni/NLETrack;)Z
.end method

.method public static final native NLEModel_setAlignMode(JLcom/bytedance/ies/nle/editor_jni/NLEModel;Ljava/lang/String;)V
.end method

.method public static final native NLEModel_setCanvasRatio(JLcom/bytedance/ies/nle/editor_jni/NLEModel;F)V
.end method

.method public static final native NLEModel_setCover(JLcom/bytedance/ies/nle/editor_jni/NLEModel;JLcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;)V
.end method

.method public static final native NLEModel_setRewind(JLcom/bytedance/ies/nle/editor_jni/NLEModel;ZJLcom/bytedance/ies/nle/editor_jni/VecNLETrackType;)V
.end method

.method public static final native NLEModel_setSetting(JLcom/bytedance/ies/nle/editor_jni/NLEModel;JLcom/bytedance/ies/nle/editor_jni/NLESetting;)V
.end method

.method public static final native NLEModel_setThousandFps(JLcom/bytedance/ies/nle/editor_jni/NLEModel;J)V
.end method

.method public static final native NLEModel_updateRelativeSizeWhileGlobalCanvasChanged(JLcom/bytedance/ies/nle/editor_jni/NLEModel;FF)V
.end method

.method public static final native NLEMonitorParamBuilder_appendParam(JLcom/bytedance/ies/nle/editor_jni/NLEMonitorParamBuilder;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public static final native NLEMonitorParamBuilder_buildParamString(JLcom/bytedance/ies/nle/editor_jni/NLEMonitorParamBuilder;)Ljava/lang/String;
.end method

.method public static final native NLEMonitor_KEY_NLE_EDITOR_RESTORE_get()Ljava/lang/String;
.end method

.method public static final native NLEMonitor_KEY_NLE_EDITOR_STORE_get()Ljava/lang/String;
.end method

.method public static final native NLEMonitor_KEY_NLE_MEDIA_CONVERT_get()Ljava/lang/String;
.end method

.method public static final native NLEMonitor_KEY_NLE_MEDIA_PLAY_FPS_get()Ljava/lang/String;
.end method

.method public static final native NLEMonitor_KEY_NLE_MEDIA_PLAY_get()Ljava/lang/String;
.end method

.method public static final native NLEMonitor_PARAM_ERROR_CODE_get()Ljava/lang/String;
.end method

.method public static final native NLEMonitor_PARAM_ERROR_MSG_get()Ljava/lang/String;
.end method

.method public static final native NLEMonitor_PARAM_NLE_JSON_SIZE_get()Ljava/lang/String;
.end method

.method public static final native NLEMonitor_PARAM_VE_API_get()Ljava/lang/String;
.end method

.method public static final native NLEMonitor_obtain()J
.end method

.method public static final native NLEMonitor_onEvent__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/NLEMonitor;Ljava/lang/String;ILjava/lang/String;J)V
.end method

.method public static final native NLEMonitor_onEvent__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/NLEMonitor;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public static final native NLEMonitor_setListener(JLcom/bytedance/ies/nle/editor_jni/NLEMonitor;JLcom/bytedance/ies/nle/editor_jni/INLEMonitor;)V
.end method

.method public static final native NLENodeGroup_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLENodeGroup_addObject(JLcom/bytedance/ies/nle/editor_jni/NLENodeGroup;JLcom/bytedance/ies/nle/editor_jni/NLENode;)V
.end method

.method public static final native NLENodeGroup_addToWorking(JLcom/bytedance/ies/nle/editor_jni/NLENodeGroup;JLcom/bytedance/ies/nle/editor_jni/NLENode;)Z
.end method

.method public static final native NLENodeGroup_clone(JLcom/bytedance/ies/nle/editor_jni/NLENodeGroup;)J
.end method

.method public static final native NLENodeGroup_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLENodeGroup_removeObject(JLcom/bytedance/ies/nle/editor_jni/NLENodeGroup;JLcom/bytedance/ies/nle/editor_jni/NLENode;)Z
.end method

.method public static final native NLENode_addListener(JLcom/bytedance/ies/nle/editor_jni/NLENode;JLcom/bytedance/ies/nle/editor_jni/NLEChangeListener;)V
.end method

.method public static final native NLENode_addToStage(JLcom/bytedance/ies/nle/editor_jni/NLENode;J)J
.end method

.method public static final native NLENode_addToWorking(JLcom/bytedance/ies/nle/editor_jni/NLENode;JLcom/bytedance/ies/nle/editor_jni/NLENode;)Z
.end method

.method public static final native NLENode_clearExtra(JLcom/bytedance/ies/nle/editor_jni/NLENode;)V
.end method

.method public static final native NLENode_clearListener(JLcom/bytedance/ies/nle/editor_jni/NLENode;)V
.end method

.method public static final native NLENode_clearTransientExtra(JLcom/bytedance/ies/nle/editor_jni/NLENode;)V
.end method

.method public static final native NLENode_clearWorkingDirty(JLcom/bytedance/ies/nle/editor_jni/NLENode;)V
.end method

.method public static final native NLENode_clone(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLENode_cloneToNode(JLcom/bytedance/ies/nle/editor_jni/NLENode;JLcom/bytedance/ies/nle/editor_jni/NLENode;Z)V
.end method

.method public static final native NLENode_collectResources(JLcom/bytedance/ies/nle/editor_jni/NLENode;JLcom/bytedance/ies/nle/editor_jni/VecNLEResourceNodeSPtr;)V
.end method

.method public static final native NLENode_copyValueNotMappedToStage(JLcom/bytedance/ies/nle/editor_jni/NLENode;)V
.end method

.method public static final native NLENode_deepClone__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLENode_deepClone__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/NLENode;Z)J
.end method

.method public static final native NLENode_equals(JLcom/bytedance/ies/nle/editor_jni/NLENode;JLcom/bytedance/ies/nle/editor_jni/NLENode;)Z
.end method

.method public static final native NLENode_getClassType(JLcom/bytedance/ies/nle/editor_jni/NLENode;)I
.end method

.method public static final native NLENode_getEnable(JLcom/bytedance/ies/nle/editor_jni/NLENode;)Z
.end method

.method public static final native NLENode_getExtra(JLcom/bytedance/ies/nle/editor_jni/NLENode;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static final native NLENode_getExtraKeys(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLENode_getId(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLENode_getName(JLcom/bytedance/ies/nle/editor_jni/NLENode;)Ljava/lang/String;
.end method

.method public static final native NLENode_getStage(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLENode_getStringId(JLcom/bytedance/ies/nle/editor_jni/NLENode;)Ljava/lang/String;
.end method

.method public static final native NLENode_getTransientExtra(JLcom/bytedance/ies/nle/editor_jni/NLENode;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static final native NLENode_getUUID(JLcom/bytedance/ies/nle/editor_jni/NLENode;)Ljava/lang/String;
.end method

.method public static final native NLENode_getWorkingDirty(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLENode_hasEnable(JLcom/bytedance/ies/nle/editor_jni/NLENode;)Z
.end method

.method public static final native NLENode_hasExtra(JLcom/bytedance/ies/nle/editor_jni/NLENode;Ljava/lang/String;)Z
.end method

.method public static final native NLENode_hasName(JLcom/bytedance/ies/nle/editor_jni/NLENode;)Z
.end method

.method public static final native NLENode_hasTransientExtra(JLcom/bytedance/ies/nle/editor_jni/NLENode;Ljava/lang/String;)Z
.end method

.method public static final native NLENode_hasUUID(JLcom/bytedance/ies/nle/editor_jni/NLENode;)Z
.end method

.method public static final native NLENode_hash(JLcom/bytedance/ies/nle/editor_jni/NLENode;)Ljava/lang/String;
.end method

.method public static final native NLENode_isWorkingDirty(JLcom/bytedance/ies/nle/editor_jni/NLENode;)Z
.end method

.method public static final native NLENode_removeExtraWithKey(JLcom/bytedance/ies/nle/editor_jni/NLENode;Ljava/lang/String;)V
.end method

.method public static final native NLENode_removeTransientExtraWithKey(JLcom/bytedance/ies/nle/editor_jni/NLENode;Ljava/lang/String;)V
.end method

.method public static final native NLENode_setEnable(JLcom/bytedance/ies/nle/editor_jni/NLENode;Z)V
.end method

.method public static final native NLENode_setExtra(JLcom/bytedance/ies/nle/editor_jni/NLENode;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static final native NLENode_setName(JLcom/bytedance/ies/nle/editor_jni/NLENode;Ljava/lang/String;)V
.end method

.method public static final native NLENode_setTransientExtra(JLcom/bytedance/ies/nle/editor_jni/NLENode;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static final native NLENode_toJsonString(JLcom/bytedance/ies/nle/editor_jni/NLENode;)Ljava/lang/String;
.end method

.method public static final native NLENode_toString(JLcom/bytedance/ies/nle/editor_jni/NLENode;)Ljava/lang/String;
.end method

.method public static final native NLENoiseReduction_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLENoiseReduction_clone(JLcom/bytedance/ies/nle/editor_jni/NLENoiseReduction;)J
.end method

.method public static final native NLENoiseReduction_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLEPoint_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLEPoint_clone(JLcom/bytedance/ies/nle/editor_jni/NLEPoint;)J
.end method

.method public static final native NLEPoint_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLEPoint_getX(JLcom/bytedance/ies/nle/editor_jni/NLEPoint;)F
.end method

.method public static final native NLEPoint_getY(JLcom/bytedance/ies/nle/editor_jni/NLEPoint;)F
.end method

.method public static final native NLEPoint_hasX(JLcom/bytedance/ies/nle/editor_jni/NLEPoint;)Z
.end method

.method public static final native NLEPoint_hasY(JLcom/bytedance/ies/nle/editor_jni/NLEPoint;)Z
.end method

.method public static final native NLEPoint_setX(JLcom/bytedance/ies/nle/editor_jni/NLEPoint;F)V
.end method

.method public static final native NLEPoint_setY(JLcom/bytedance/ies/nle/editor_jni/NLEPoint;F)V
.end method

.method public static final native NLEResTypeToString(I)Ljava/lang/String;
.end method

.method public static final native NLEResourceAV_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLEResourceAV_clone(JLcom/bytedance/ies/nle/editor_jni/NLEResourceAV;)J
.end method

.method public static final native NLEResourceAV_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLEResourceAV_getFileInfo(JLcom/bytedance/ies/nle/editor_jni/NLEResourceAV;)Ljava/lang/String;
.end method

.method public static final native NLEResourceAV_getHasAudio(JLcom/bytedance/ies/nle/editor_jni/NLEResourceAV;)Z
.end method

.method public static final native NLEResourceAV_getReverseResourceFile(JLcom/bytedance/ies/nle/editor_jni/NLEResourceAV;)Ljava/lang/String;
.end method

.method public static final native NLEResourceAV_hasFileInfo(JLcom/bytedance/ies/nle/editor_jni/NLEResourceAV;)Z
.end method

.method public static final native NLEResourceAV_hasHasAudio(JLcom/bytedance/ies/nle/editor_jni/NLEResourceAV;)Z
.end method

.method public static final native NLEResourceAV_hasReverseResourceFile(JLcom/bytedance/ies/nle/editor_jni/NLEResourceAV;)Z
.end method

.method public static final native NLEResourceAV_setFileInfo(JLcom/bytedance/ies/nle/editor_jni/NLEResourceAV;Ljava/lang/String;)V
.end method

.method public static final native NLEResourceAV_setHasAudio(JLcom/bytedance/ies/nle/editor_jni/NLEResourceAV;Z)V
.end method

.method public static final native NLEResourceAV_setReverseResourceFile(JLcom/bytedance/ies/nle/editor_jni/NLEResourceAV;Ljava/lang/String;)V
.end method

.method public static final native NLEResourceFetchCallback_change_ownership(Lcom/bytedance/ies/nle/editor_jni/NLEResourceFetchCallback;JZ)V
.end method

.method public static final native NLEResourceFetchCallback_director_connect(Lcom/bytedance/ies/nle/editor_jni/NLEResourceFetchCallback;JZZ)V
.end method

.method public static final native NLEResourceFetchCallback_onError(JLcom/bytedance/ies/nle/editor_jni/NLEResourceFetchCallback;I)V
.end method

.method public static final native NLEResourceFetchCallback_onProgress(JLcom/bytedance/ies/nle/editor_jni/NLEResourceFetchCallback;I)V
.end method

.method public static final native NLEResourceFetchCallback_onSuccess(JLcom/bytedance/ies/nle/editor_jni/NLEResourceFetchCallback;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static final native NLEResourceGIF_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLEResourceGIF_clone(JLcom/bytedance/ies/nle/editor_jni/NLEResourceGIF;)J
.end method

.method public static final native NLEResourceGIF_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLEResourceGIF_getResourceFiles(JLcom/bytedance/ies/nle/editor_jni/NLEResourceGIF;)J
.end method

.method public static final native NLEResourceGIF_hasResourceFiles(JLcom/bytedance/ies/nle/editor_jni/NLEResourceGIF;)Z
.end method

.method public static final native NLEResourceGIF_setResourceFiles(JLcom/bytedance/ies/nle/editor_jni/NLEResourceGIF;JLcom/bytedance/ies/nle/editor_jni/VecString;)V
.end method

.method public static final native NLEResourceNode_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLEResourceNode_clone(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)J
.end method

.method public static final native NLEResourceNode_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLEResourceNode_getDuration(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)J
.end method

.method public static final native NLEResourceNode_getHeight(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)J
.end method

.method public static final native NLEResourceNode_getResourceFile(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)Ljava/lang/String;
.end method

.method public static final native NLEResourceNode_getResourceId(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)Ljava/lang/String;
.end method

.method public static final native NLEResourceNode_getResourceName(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)Ljava/lang/String;
.end method

.method public static final native NLEResourceNode_getResourceTag(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)I
.end method

.method public static final native NLEResourceNode_getResourceType(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)I
.end method

.method public static final native NLEResourceNode_getWidth(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)J
.end method

.method public static final native NLEResourceNode_hasDuration(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)Z
.end method

.method public static final native NLEResourceNode_hasHeight(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)Z
.end method

.method public static final native NLEResourceNode_hasResourceFile(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)Z
.end method

.method public static final native NLEResourceNode_hasResourceId(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)Z
.end method

.method public static final native NLEResourceNode_hasResourceName(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)Z
.end method

.method public static final native NLEResourceNode_hasResourceTag(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)Z
.end method

.method public static final native NLEResourceNode_hasResourceType(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)Z
.end method

.method public static final native NLEResourceNode_hasWidth(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)Z
.end method

.method public static final native NLEResourceNode_isLocal(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)Z
.end method

.method public static final native NLEResourceNode_setDuration(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;J)V
.end method

.method public static final native NLEResourceNode_setHeight(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;J)V
.end method

.method public static final native NLEResourceNode_setResourceFile(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;Ljava/lang/String;)V
.end method

.method public static final native NLEResourceNode_setResourceId(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;Ljava/lang/String;)V
.end method

.method public static final native NLEResourceNode_setResourceName(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;Ljava/lang/String;)V
.end method

.method public static final native NLEResourceNode_setResourceTag(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;I)V
.end method

.method public static final native NLEResourceNode_setResourceType(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;I)V
.end method

.method public static final native NLEResourceNode_setWidth(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;J)V
.end method

.method public static final native NLEResourceProtocol_getParameters(JLcom/bytedance/ies/nle/editor_jni/NLEResourceProtocol;)J
.end method

.method public static final native NLEResourceProtocol_getSourceFrom(JLcom/bytedance/ies/nle/editor_jni/NLEResourceProtocol;)Ljava/lang/String;
.end method

.method public static final native NLEResourceProtocol_toResourceId(JLcom/bytedance/ies/nle/editor_jni/NLEResourceProtocol;)Ljava/lang/String;
.end method

.method public static final native NLEResourceSynchronizer_change_ownership(Lcom/bytedance/ies/nle/editor_jni/NLEResourceSynchronizer;JZ)V
.end method

.method public static final native NLEResourceSynchronizer_director_connect(Lcom/bytedance/ies/nle/editor_jni/NLEResourceSynchronizer;JZZ)V
.end method

.method public static final native NLEResourceSynchronizer_fetch(JLcom/bytedance/ies/nle/editor_jni/NLEResourceSynchronizer;Ljava/lang/String;J)I
.end method

.method public static final native NLEResourceSynchronizer_push(JLcom/bytedance/ies/nle/editor_jni/NLEResourceSynchronizer;Ljava/lang/String;J)I
.end method

.method public static final native NLESegmentAIMatting_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLESegmentAIMatting_clone(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAIMatting;)J
.end method

.method public static final native NLESegmentAIMatting_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLESegmentAIMatting_getAiMattingCilpEnd(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAIMatting;)J
.end method

.method public static final native NLESegmentAIMatting_getAiMattingCilpStart(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAIMatting;)J
.end method

.method public static final native NLESegmentAIMatting_getArcherStrategy(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAIMatting;)I
.end method

.method public static final native NLESegmentAIMatting_getResource(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAIMatting;)J
.end method

.method public static final native NLESegmentAIMatting_getResourceAiMatting(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAIMatting;)J
.end method

.method public static final native NLESegmentAIMatting_getWorkSpace(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAIMatting;)Ljava/lang/String;
.end method

.method public static final native NLESegmentAIMatting_hasAiMattingCilpEnd(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAIMatting;)Z
.end method

.method public static final native NLESegmentAIMatting_hasAiMattingCilpStart(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAIMatting;)Z
.end method

.method public static final native NLESegmentAIMatting_hasArcherStrategy(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAIMatting;)Z
.end method

.method public static final native NLESegmentAIMatting_hasWorkSpace(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAIMatting;)Z
.end method

.method public static final native NLESegmentAIMatting_setAiMattingCilpEnd(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAIMatting;J)V
.end method

.method public static final native NLESegmentAIMatting_setAiMattingCilpStart(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAIMatting;J)V
.end method

.method public static final native NLESegmentAIMatting_setArcherStrategy(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAIMatting;I)V
.end method

.method public static final native NLESegmentAIMatting_setResourceAiMatting(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAIMatting;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
.end method

.method public static final native NLESegmentAIMatting_setWorkSpace(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAIMatting;Ljava/lang/String;)V
.end method

.method public static final native NLESegmentAudioFadeFilter_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLESegmentAudioFadeFilter_clone(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudioFadeFilter;)J
.end method

.method public static final native NLESegmentAudioFadeFilter_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLESegmentAudioFadeFilter_getFadeInLength(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudioFadeFilter;)J
.end method

.method public static final native NLESegmentAudioFadeFilter_getFadeOutLength(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudioFadeFilter;)J
.end method

.method public static final native NLESegmentAudioFadeFilter_hasFadeInLength(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudioFadeFilter;)Z
.end method

.method public static final native NLESegmentAudioFadeFilter_hasFadeOutLength(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudioFadeFilter;)Z
.end method

.method public static final native NLESegmentAudioFadeFilter_setFadeInLength(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudioFadeFilter;J)V
.end method

.method public static final native NLESegmentAudioFadeFilter_setFadeOutLength(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudioFadeFilter;J)V
.end method

.method public static final native NLESegmentAudioLoudnessBalanceFilter_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLESegmentAudioLoudnessBalanceFilter_clone(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudioLoudnessBalanceFilter;)J
.end method

.method public static final native NLESegmentAudioLoudnessBalanceFilter_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLESegmentAudioLoudnessBalanceFilter_getAvgLoudness(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudioLoudnessBalanceFilter;)D
.end method

.method public static final native NLESegmentAudioLoudnessBalanceFilter_getPeakLoudness(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudioLoudnessBalanceFilter;)D
.end method

.method public static final native NLESegmentAudioLoudnessBalanceFilter_getTargetLoudness(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudioLoudnessBalanceFilter;)D
.end method

.method public static final native NLESegmentAudioLoudnessBalanceFilter_hasAvgLoudness(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudioLoudnessBalanceFilter;)Z
.end method

.method public static final native NLESegmentAudioLoudnessBalanceFilter_hasPeakLoudness(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudioLoudnessBalanceFilter;)Z
.end method

.method public static final native NLESegmentAudioLoudnessBalanceFilter_hasTargetLoudness(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudioLoudnessBalanceFilter;)Z
.end method

.method public static final native NLESegmentAudioLoudnessBalanceFilter_setAvgLoudness(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudioLoudnessBalanceFilter;D)V
.end method

.method public static final native NLESegmentAudioLoudnessBalanceFilter_setPeakLoudness(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudioLoudnessBalanceFilter;D)V
.end method

.method public static final native NLESegmentAudioLoudnessBalanceFilter_setTargetLoudness(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudioLoudnessBalanceFilter;D)V
.end method

.method public static final native NLESegmentAudioSamiFilter_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLESegmentAudioSamiFilter_TYPE_FTGRUE_NOISE_get()I
.end method

.method public static final native NLESegmentAudioSamiFilter_TYPE_TCNDE_NOISE_get()I
.end method

.method public static final native NLESegmentAudioSamiFilter_clone(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudioSamiFilter;)J
.end method

.method public static final native NLESegmentAudioSamiFilter_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLESegmentAudioSamiFilter_getSamiParam(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudioSamiFilter;)Ljava/lang/String;
.end method

.method public static final native NLESegmentAudioSamiFilter_getSamiType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudioSamiFilter;)I
.end method

.method public static final native NLESegmentAudioSamiFilter_hasSamiParam(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudioSamiFilter;)Z
.end method

.method public static final native NLESegmentAudioSamiFilter_hasSamiType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudioSamiFilter;)Z
.end method

.method public static final native NLESegmentAudioSamiFilter_setSamiParam(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudioSamiFilter;Ljava/lang/String;)V
.end method

.method public static final native NLESegmentAudioSamiFilter_setSamiType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudioSamiFilter;I)V
.end method

.method public static final native NLESegmentAudioVolumeFilter_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLESegmentAudioVolumeFilter_clone(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudioVolumeFilter;)J
.end method

.method public static final native NLESegmentAudioVolumeFilter_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLESegmentAudioVolumeFilter_getVolume(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudioVolumeFilter;)F
.end method

.method public static final native NLESegmentAudioVolumeFilter_hasVolume(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudioVolumeFilter;)Z
.end method

.method public static final native NLESegmentAudioVolumeFilter_setVolume(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudioVolumeFilter;F)V
.end method

.method public static final native NLESegmentAudio_REPEAT_INFINITE_get()I
.end method

.method public static final native NLESegmentAudio_REPEAT_NORMAL_get()I
.end method

.method public static final native NLESegmentAudio_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLESegmentAudio_addCurveSpeedPoint(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;JLcom/bytedance/ies/nle/editor_jni/NLEPoint;)V
.end method

.method public static final native NLESegmentAudio_addSegCurveSpeedPoint(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;JLcom/bytedance/ies/nle/editor_jni/NLEPoint;)V
.end method

.method public static final native NLESegmentAudio_changerToEffectJson(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)Ljava/lang/String;
.end method

.method public static final native NLESegmentAudio_clearCurveSpeedPoint(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)V
.end method

.method public static final native NLESegmentAudio_clearSegCurveSpeedPoint(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)V
.end method

.method public static final native NLESegmentAudio_clone(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)J
.end method

.method public static final native NLESegmentAudio_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLESegmentAudio_getAVFile(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)J
.end method

.method public static final native NLESegmentAudio_getAbsSpeed(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)F
.end method

.method public static final native NLESegmentAudio_getActionBeamAvgSpeed(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)D
.end method

.method public static final native NLESegmentAudio_getChanger(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)I
.end method

.method public static final native NLESegmentAudio_getCurveActionBeam(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)J
.end method

.method public static final native NLESegmentAudio_getCurveAveSpeed(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)D
.end method

.method public static final native NLESegmentAudio_getCurveSpeedPoints(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)J
.end method

.method public static final native NLESegmentAudio_getCurveSpeedType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)I
.end method

.method public static final native NLESegmentAudio_getDuration(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)J
.end method

.method public static final native NLESegmentAudio_getDurationWithoutCurveSpeed(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)J
.end method

.method public static final native NLESegmentAudio_getFadeInLength(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)J
.end method

.method public static final native NLESegmentAudio_getFadeOutLength(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)J
.end method

.method public static final native NLESegmentAudio_getKeepTone(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)Z
.end method

.method public static final native NLESegmentAudio_getPlayResource(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)J
.end method

.method public static final native NLESegmentAudio_getRawDuration(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)J
.end method

.method public static final native NLESegmentAudio_getRepeatCount(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)I
.end method

.method public static final native NLESegmentAudio_getResource(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)J
.end method

.method public static final native NLESegmentAudio_getReversedAVFile(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)J
.end method

.method public static final native NLESegmentAudio_getRewind(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)Z
.end method

.method public static final native NLESegmentAudio_getSegCurveSpeedPoints(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)J
.end method

.method public static final native NLESegmentAudio_getSeqCurveSpeedPoints(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)J
.end method

.method public static final native NLESegmentAudio_getSpeed(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)F
.end method

.method public static final native NLESegmentAudio_getTimeClipEnd(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)J
.end method

.method public static final native NLESegmentAudio_getTimeClipStart(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)J
.end method

.method public static final native NLESegmentAudio_getVolume(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)F
.end method

.method public static final native NLESegmentAudio_hasChanger(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)Z
.end method

.method public static final native NLESegmentAudio_hasCurveSpeedType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)Z
.end method

.method public static final native NLESegmentAudio_hasFadeInLength(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)Z
.end method

.method public static final native NLESegmentAudio_hasFadeOutLength(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)Z
.end method

.method public static final native NLESegmentAudio_hasKeepTone(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)Z
.end method

.method public static final native NLESegmentAudio_hasRepeatCount(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)Z
.end method

.method public static final native NLESegmentAudio_hasSpeed(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)Z
.end method

.method public static final native NLESegmentAudio_hasTimeClipEnd(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)Z
.end method

.method public static final native NLESegmentAudio_hasTimeClipStart(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)Z
.end method

.method public static final native NLESegmentAudio_hasVolume(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)Z
.end method

.method public static final native NLESegmentAudio_removeCurveSpeedPoint(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;JLcom/bytedance/ies/nle/editor_jni/NLEPoint;)Z
.end method

.method public static final native NLESegmentAudio_removeSegCurveSpeedPoint(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;JLcom/bytedance/ies/nle/editor_jni/NLEPoint;)Z
.end method

.method public static final native NLESegmentAudio_setAVFile(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;JLcom/bytedance/ies/nle/editor_jni/NLEResourceAV;)V
.end method

.method public static final native NLESegmentAudio_setAbsSpeed(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;F)V
.end method

.method public static final native NLESegmentAudio_setChanger(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;I)V
.end method

.method public static final native NLESegmentAudio_setCurveActionBeam(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;JLcom/bytedance/ies/nle/editor_jni/NLECurveActionBeam;)V
.end method

.method public static final native NLESegmentAudio_setCurveActionBeamPoints(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;JLcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;)V
.end method

.method public static final native NLESegmentAudio_setCurveSpeedPoints(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;JLcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;)V
.end method

.method public static final native NLESegmentAudio_setCurveSpeedType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;I)V
.end method

.method public static final native NLESegmentAudio_setFadeInLength(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;J)V
.end method

.method public static final native NLESegmentAudio_setFadeOutLength(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;J)V
.end method

.method public static final native NLESegmentAudio_setKeepTone(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;Z)V
.end method

.method public static final native NLESegmentAudio_setRepeatCount(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;I)V
.end method

.method public static final native NLESegmentAudio_setReversedAVFile(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;JLcom/bytedance/ies/nle/editor_jni/NLEResourceAV;)V
.end method

.method public static final native NLESegmentAudio_setRewind(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;Z)V
.end method

.method public static final native NLESegmentAudio_setSegCurveSpeedPoints(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;JLcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;)V
.end method

.method public static final native NLESegmentAudio_setSpeed(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;F)V
.end method

.method public static final native NLESegmentAudio_setTimeClipEnd(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;J)V
.end method

.method public static final native NLESegmentAudio_setTimeClipStart(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;J)V
.end method

.method public static final native NLESegmentAudio_setVolume(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;F)V
.end method

.method public static final native NLESegmentAutoFillFrame_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLESegmentAutoFillFrame_clone(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAutoFillFrame;)J
.end method

.method public static final native NLESegmentAutoFillFrame_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLESegmentAutoFillFrame_getAlgScale(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAutoFillFrame;)F
.end method

.method public static final native NLESegmentAutoFillFrame_getAutoFillAlgType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAutoFillFrame;)I
.end method

.method public static final native NLESegmentAutoFillFrame_getEffectSDKAutoFillFrame(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAutoFillFrame;)J
.end method

.method public static final native NLESegmentAutoFillFrame_getResource(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAutoFillFrame;)J
.end method

.method public static final native NLESegmentAutoFillFrame_hasAlgScale(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAutoFillFrame;)Z
.end method

.method public static final native NLESegmentAutoFillFrame_hasAutoFillAlgType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAutoFillFrame;)Z
.end method

.method public static final native NLESegmentAutoFillFrame_setAlgScale(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAutoFillFrame;F)V
.end method

.method public static final native NLESegmentAutoFillFrame_setAutoFillAlgType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAutoFillFrame;I)V
.end method

.method public static final native NLESegmentAutoFillFrame_setEffectSDKAutoFillFrame(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAutoFillFrame;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
.end method

.method public static final native NLESegmentBrickEffect_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLESegmentBrickEffect_clone(JLcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;)J
.end method

.method public static final native NLESegmentBrickEffect_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLESegmentBrickEffect_getBrickType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;)I
.end method

.method public static final native NLESegmentBrickEffect_getEffectJsonParam(JLcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;)Ljava/lang/String;
.end method

.method public static final native NLESegmentBrickEffect_getEffectSDKEffect(JLcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;)J
.end method

.method public static final native NLESegmentBrickEffect_getResource(JLcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;)J
.end method

.method public static final native NLESegmentBrickEffect_getShapeDataRes(JLcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;)J
.end method

.method public static final native NLESegmentBrickEffect_hasBrickType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;)Z
.end method

.method public static final native NLESegmentBrickEffect_hasEffectJsonParam(JLcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;)Z
.end method

.method public static final native NLESegmentBrickEffect_setBrickType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;I)V
.end method

.method public static final native NLESegmentBrickEffect_setEffectJsonParam(JLcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;Ljava/lang/String;)V
.end method

.method public static final native NLESegmentBrickEffect_setEffectSDKEffect(JLcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
.end method

.method public static final native NLESegmentBrickEffect_setShapeDataRes(JLcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
.end method

.method public static final native NLESegmentCherEffect_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLESegmentCherEffect_clone(JLcom/bytedance/ies/nle/editor_jni/NLESegmentCherEffect;)J
.end method

.method public static final native NLESegmentCherEffect_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLESegmentCherEffect_getCherDuration(JLcom/bytedance/ies/nle/editor_jni/NLESegmentCherEffect;)J
.end method

.method public static final native NLESegmentCherEffect_getCherMatrix(JLcom/bytedance/ies/nle/editor_jni/NLESegmentCherEffect;)J
.end method

.method public static final native NLESegmentCherEffect_getType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentCherEffect;)I
.end method

.method public static final native NLESegmentCherEffect_hasCherDuration(JLcom/bytedance/ies/nle/editor_jni/NLESegmentCherEffect;)Z
.end method

.method public static final native NLESegmentCherEffect_hasCherMatrix(JLcom/bytedance/ies/nle/editor_jni/NLESegmentCherEffect;)Z
.end method

.method public static final native NLESegmentCherEffect_setCherDuration(JLcom/bytedance/ies/nle/editor_jni/NLESegmentCherEffect;JLcom/bytedance/ies/nle/editor_jni/VecDouble;)V
.end method

.method public static final native NLESegmentCherEffect_setCherMatrix(JLcom/bytedance/ies/nle/editor_jni/NLESegmentCherEffect;JLcom/bytedance/ies/nle/editor_jni/VecString;)V
.end method

.method public static final native NLESegmentChromaChannel_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLESegmentChromaChannel_clone(JLcom/bytedance/ies/nle/editor_jni/NLESegmentChromaChannel;)J
.end method

.method public static final native NLESegmentChromaChannel_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLESegmentChromaChannel_getColor(JLcom/bytedance/ies/nle/editor_jni/NLESegmentChromaChannel;)J
.end method

.method public static final native NLESegmentChromaChannel_getEffectSDKChroma(JLcom/bytedance/ies/nle/editor_jni/NLESegmentChromaChannel;)J
.end method

.method public static final native NLESegmentChromaChannel_getIntensity(JLcom/bytedance/ies/nle/editor_jni/NLESegmentChromaChannel;)F
.end method

.method public static final native NLESegmentChromaChannel_getResource(JLcom/bytedance/ies/nle/editor_jni/NLESegmentChromaChannel;)J
.end method

.method public static final native NLESegmentChromaChannel_getShadow(JLcom/bytedance/ies/nle/editor_jni/NLESegmentChromaChannel;)F
.end method

.method public static final native NLESegmentChromaChannel_hasColor(JLcom/bytedance/ies/nle/editor_jni/NLESegmentChromaChannel;)Z
.end method

.method public static final native NLESegmentChromaChannel_hasIntensity(JLcom/bytedance/ies/nle/editor_jni/NLESegmentChromaChannel;)Z
.end method

.method public static final native NLESegmentChromaChannel_hasShadow(JLcom/bytedance/ies/nle/editor_jni/NLESegmentChromaChannel;)Z
.end method

.method public static final native NLESegmentChromaChannel_setColor(JLcom/bytedance/ies/nle/editor_jni/NLESegmentChromaChannel;J)V
.end method

.method public static final native NLESegmentChromaChannel_setEffectSDKChroma(JLcom/bytedance/ies/nle/editor_jni/NLESegmentChromaChannel;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
.end method

.method public static final native NLESegmentChromaChannel_setIntensity(JLcom/bytedance/ies/nle/editor_jni/NLESegmentChromaChannel;F)V
.end method

.method public static final native NLESegmentChromaChannel_setShadow(JLcom/bytedance/ies/nle/editor_jni/NLESegmentChromaChannel;F)V
.end method

.method public static final native NLESegmentComposerFilter_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLESegmentComposerFilter_addEffectNodeKeyValuePair(JLcom/bytedance/ies/nle/editor_jni/NLESegmentComposerFilter;JLcom/bytedance/ies/nle/editor_jni/NLEStringFloatPair;)V
.end method

.method public static final native NLESegmentComposerFilter_clearEffectNodeKeyValuePair(JLcom/bytedance/ies/nle/editor_jni/NLESegmentComposerFilter;)V
.end method

.method public static final native NLESegmentComposerFilter_clone(JLcom/bytedance/ies/nle/editor_jni/NLESegmentComposerFilter;)J
.end method

.method public static final native NLESegmentComposerFilter_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLESegmentComposerFilter_getEffectNodeKeyValuePairs(JLcom/bytedance/ies/nle/editor_jni/NLESegmentComposerFilter;)J
.end method

.method public static final native NLESegmentComposerFilter_getEffectTags(JLcom/bytedance/ies/nle/editor_jni/NLESegmentComposerFilter;)J
.end method

.method public static final native NLESegmentComposerFilter_getNodePaths(JLcom/bytedance/ies/nle/editor_jni/NLESegmentComposerFilter;)J
.end method

.method public static final native NLESegmentComposerFilter_hasEffectTags(JLcom/bytedance/ies/nle/editor_jni/NLESegmentComposerFilter;)Z
.end method

.method public static final native NLESegmentComposerFilter_hasNodePaths(JLcom/bytedance/ies/nle/editor_jni/NLESegmentComposerFilter;)Z
.end method

.method public static final native NLESegmentComposerFilter_removeEffectNodeKeyValuePair(JLcom/bytedance/ies/nle/editor_jni/NLESegmentComposerFilter;JLcom/bytedance/ies/nle/editor_jni/NLEStringFloatPair;)Z
.end method

.method public static final native NLESegmentComposerFilter_setEffectTags(JLcom/bytedance/ies/nle/editor_jni/NLESegmentComposerFilter;JLcom/bytedance/ies/nle/editor_jni/VecString;)V
.end method

.method public static final native NLESegmentComposerFilter_setNodePaths(JLcom/bytedance/ies/nle/editor_jni/NLESegmentComposerFilter;JLcom/bytedance/ies/nle/editor_jni/VecString;)V
.end method

.method public static final native NLESegmentEffectSticker_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLESegmentEffectSticker_clone(JLcom/bytedance/ies/nle/editor_jni/NLESegmentEffectSticker;)J
.end method

.method public static final native NLESegmentEffectSticker_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLESegmentEffectSticker_getResource(JLcom/bytedance/ies/nle/editor_jni/NLESegmentEffectSticker;)J
.end method

.method public static final native NLESegmentEffectSticker_getStickerResource(JLcom/bytedance/ies/nle/editor_jni/NLESegmentEffectSticker;)J
.end method

.method public static final native NLESegmentEffectSticker_getStickerTag(JLcom/bytedance/ies/nle/editor_jni/NLESegmentEffectSticker;)Ljava/lang/String;
.end method

.method public static final native NLESegmentEffectSticker_hasStickerTag(JLcom/bytedance/ies/nle/editor_jni/NLESegmentEffectSticker;)Z
.end method

.method public static final native NLESegmentEffectSticker_setStickerResource(JLcom/bytedance/ies/nle/editor_jni/NLESegmentEffectSticker;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
.end method

.method public static final native NLESegmentEffectSticker_setStickerTag(JLcom/bytedance/ies/nle/editor_jni/NLESegmentEffectSticker;Ljava/lang/String;)V
.end method

.method public static final native NLESegmentEffect_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLESegmentEffect_addAdjustParams(JLcom/bytedance/ies/nle/editor_jni/NLESegmentEffect;JLcom/bytedance/ies/nle/editor_jni/NLEStringFloatPair;)V
.end method

.method public static final native NLESegmentEffect_clearAdjustParams(JLcom/bytedance/ies/nle/editor_jni/NLESegmentEffect;)V
.end method

.method public static final native NLESegmentEffect_clone(JLcom/bytedance/ies/nle/editor_jni/NLESegmentEffect;)J
.end method

.method public static final native NLESegmentEffect_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLESegmentEffect_getAdjustParamss(JLcom/bytedance/ies/nle/editor_jni/NLESegmentEffect;)J
.end method

.method public static final native NLESegmentEffect_getApplyTargetType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentEffect;)I
.end method

.method public static final native NLESegmentEffect_getEffectName(JLcom/bytedance/ies/nle/editor_jni/NLESegmentEffect;)Ljava/lang/String;
.end method

.method public static final native NLESegmentEffect_getEffectSDKEffect(JLcom/bytedance/ies/nle/editor_jni/NLESegmentEffect;)J
.end method

.method public static final native NLESegmentEffect_getEffectTag(JLcom/bytedance/ies/nle/editor_jni/NLESegmentEffect;)Ljava/lang/String;
.end method

.method public static final native NLESegmentEffect_getResource(JLcom/bytedance/ies/nle/editor_jni/NLESegmentEffect;)J
.end method

.method public static final native NLESegmentEffect_hasApplyTargetType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentEffect;)Z
.end method

.method public static final native NLESegmentEffect_hasEffectName(JLcom/bytedance/ies/nle/editor_jni/NLESegmentEffect;)Z
.end method

.method public static final native NLESegmentEffect_hasEffectTag(JLcom/bytedance/ies/nle/editor_jni/NLESegmentEffect;)Z
.end method

.method public static final native NLESegmentEffect_removeAdjustParams(JLcom/bytedance/ies/nle/editor_jni/NLESegmentEffect;JLcom/bytedance/ies/nle/editor_jni/NLEStringFloatPair;)Z
.end method

.method public static final native NLESegmentEffect_setApplyTargetType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentEffect;I)V
.end method

.method public static final native NLESegmentEffect_setEffectName(JLcom/bytedance/ies/nle/editor_jni/NLESegmentEffect;Ljava/lang/String;)V
.end method

.method public static final native NLESegmentEffect_setEffectSDKEffect(JLcom/bytedance/ies/nle/editor_jni/NLESegmentEffect;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
.end method

.method public static final native NLESegmentEffect_setEffectTag(JLcom/bytedance/ies/nle/editor_jni/NLESegmentEffect;Ljava/lang/String;)V
.end method

.method public static final native NLESegmentEmojiSticker_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLESegmentEmojiSticker_clone(JLcom/bytedance/ies/nle/editor_jni/NLESegmentEmojiSticker;)J
.end method

.method public static final native NLESegmentEmojiSticker_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLESegmentEmojiSticker_getType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentEmojiSticker;)I
.end method

.method public static final native NLESegmentEmojiSticker_getutf8Code(JLcom/bytedance/ies/nle/editor_jni/NLESegmentEmojiSticker;)Ljava/lang/String;
.end method

.method public static final native NLESegmentEmojiSticker_hasutf8Code(JLcom/bytedance/ies/nle/editor_jni/NLESegmentEmojiSticker;)Z
.end method

.method public static final native NLESegmentEmojiSticker_setutf8Code(JLcom/bytedance/ies/nle/editor_jni/NLESegmentEmojiSticker;Ljava/lang/String;)V
.end method

.method public static final native NLESegmentFilter_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLESegmentFilter_addAdjustParams(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;JLcom/bytedance/ies/nle/editor_jni/NLEStringFloatPair;)V
.end method

.method public static final native NLESegmentFilter_clearAdjustParams(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;)V
.end method

.method public static final native NLESegmentFilter_clone(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;)J
.end method

.method public static final native NLESegmentFilter_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLESegmentFilter_getAdjustParamss(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;)J
.end method

.method public static final native NLESegmentFilter_getApplyTargetType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;)I
.end method

.method public static final native NLESegmentFilter_getEffectSDKFilter(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;)J
.end method

.method public static final native NLESegmentFilter_getFilterName(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;)Ljava/lang/String;
.end method

.method public static final native NLESegmentFilter_getFilterPosition(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;)F
.end method

.method public static final native NLESegmentFilter_getIntensity(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;)F
.end method

.method public static final native NLESegmentFilter_getResource(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;)J
.end method

.method public static final native NLESegmentFilter_getRightFilter(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;)J
.end method

.method public static final native NLESegmentFilter_getRightIntensity(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;)F
.end method

.method public static final native NLESegmentFilter_getUseFilterV3(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;)Z
.end method

.method public static final native NLESegmentFilter_hasApplyTargetType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;)Z
.end method

.method public static final native NLESegmentFilter_hasFilterName(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;)Z
.end method

.method public static final native NLESegmentFilter_hasFilterPosition(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;)Z
.end method

.method public static final native NLESegmentFilter_hasIntensity(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;)Z
.end method

.method public static final native NLESegmentFilter_hasRightIntensity(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;)Z
.end method

.method public static final native NLESegmentFilter_hasUseFilterV3(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;)Z
.end method

.method public static final native NLESegmentFilter_removeAdjustParams(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;JLcom/bytedance/ies/nle/editor_jni/NLEStringFloatPair;)Z
.end method

.method public static final native NLESegmentFilter_setApplyTargetType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;I)V
.end method

.method public static final native NLESegmentFilter_setEffectSDKFilter(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
.end method

.method public static final native NLESegmentFilter_setFilterName(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;Ljava/lang/String;)V
.end method

.method public static final native NLESegmentFilter_setFilterPosition(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;F)V
.end method

.method public static final native NLESegmentFilter_setIntensity(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;F)V
.end method

.method public static final native NLESegmentFilter_setRightFilter(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
.end method

.method public static final native NLESegmentFilter_setRightIntensity(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;F)V
.end method

.method public static final native NLESegmentFilter_setUseFilterV3(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;Z)V
.end method

.method public static final native NLESegmentGIF_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLESegmentGIF_clone(JLcom/bytedance/ies/nle/editor_jni/NLESegmentGIF;)J
.end method

.method public static final native NLESegmentGIF_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLESegmentGIF_getGifResource(JLcom/bytedance/ies/nle/editor_jni/NLESegmentGIF;)J
.end method

.method public static final native NLESegmentGIF_getResource(JLcom/bytedance/ies/nle/editor_jni/NLESegmentGIF;)J
.end method

.method public static final native NLESegmentGIF_setGifResource(JLcom/bytedance/ies/nle/editor_jni/NLESegmentGIF;JLcom/bytedance/ies/nle/editor_jni/NLEResourceGIF;)V
.end method

.method public static final native NLESegmentHDRFilter_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLESegmentHDRFilter_clone(JLcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;)J
.end method

.method public static final native NLESegmentHDRFilter_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLESegmentHDRFilter_getAsfMode(JLcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;)I
.end method

.method public static final native NLESegmentHDRFilter_getDenoise(JLcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;)Z
.end method

.method public static final native NLESegmentHDRFilter_getFilePath(JLcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;)Ljava/lang/String;
.end method

.method public static final native NLESegmentHDRFilter_getFrameType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;)I
.end method

.method public static final native NLESegmentHDRFilter_getHdrMode(JLcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;)I
.end method

.method public static final native NLESegmentHDRFilter_hasAsfMode(JLcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;)Z
.end method

.method public static final native NLESegmentHDRFilter_hasDenoise(JLcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;)Z
.end method

.method public static final native NLESegmentHDRFilter_hasFilePath(JLcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;)Z
.end method

.method public static final native NLESegmentHDRFilter_hasFrameType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;)Z
.end method

.method public static final native NLESegmentHDRFilter_hasHdrMode(JLcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;)Z
.end method

.method public static final native NLESegmentHDRFilter_setAsfMode(JLcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;I)V
.end method

.method public static final native NLESegmentHDRFilter_setDenoise(JLcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;Z)V
.end method

.method public static final native NLESegmentHDRFilter_setFilePath(JLcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;Ljava/lang/String;)V
.end method

.method public static final native NLESegmentHDRFilter_setFrameType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;I)V
.end method

.method public static final native NLESegmentHDRFilter_setHdrMode(JLcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;I)V
.end method

.method public static final native NLESegmentHSLFilter_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLESegmentHSLFilter_clone(JLcom/bytedance/ies/nle/editor_jni/NLESegmentHSLFilter;)J
.end method

.method public static final native NLESegmentHSLFilter_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLESegmentHSLFilter_getColorType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentHSLFilter;)I
.end method

.method public static final native NLESegmentHSLFilter_getHue(JLcom/bytedance/ies/nle/editor_jni/NLESegmentHSLFilter;)D
.end method

.method public static final native NLESegmentHSLFilter_getLightness(JLcom/bytedance/ies/nle/editor_jni/NLESegmentHSLFilter;)D
.end method

.method public static final native NLESegmentHSLFilter_getSaturation(JLcom/bytedance/ies/nle/editor_jni/NLESegmentHSLFilter;)D
.end method

.method public static final native NLESegmentHSLFilter_hasColorType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentHSLFilter;)Z
.end method

.method public static final native NLESegmentHSLFilter_hasHue(JLcom/bytedance/ies/nle/editor_jni/NLESegmentHSLFilter;)Z
.end method

.method public static final native NLESegmentHSLFilter_hasLightness(JLcom/bytedance/ies/nle/editor_jni/NLESegmentHSLFilter;)Z
.end method

.method public static final native NLESegmentHSLFilter_hasSaturation(JLcom/bytedance/ies/nle/editor_jni/NLESegmentHSLFilter;)Z
.end method

.method public static final native NLESegmentHSLFilter_setColorType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentHSLFilter;I)V
.end method

.method public static final native NLESegmentHSLFilter_setHue(JLcom/bytedance/ies/nle/editor_jni/NLESegmentHSLFilter;D)V
.end method

.method public static final native NLESegmentHSLFilter_setLightness(JLcom/bytedance/ies/nle/editor_jni/NLESegmentHSLFilter;D)V
.end method

.method public static final native NLESegmentHSLFilter_setSaturation(JLcom/bytedance/ies/nle/editor_jni/NLESegmentHSLFilter;D)V
.end method

.method public static final native NLESegmentImageSticker_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLESegmentImageSticker_clone(JLcom/bytedance/ies/nle/editor_jni/NLESegmentImageSticker;)J
.end method

.method public static final native NLESegmentImageSticker_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLESegmentImageSticker_getClip(JLcom/bytedance/ies/nle/editor_jni/NLESegmentImageSticker;)J
.end method

.method public static final native NLESegmentImageSticker_getCrop(JLcom/bytedance/ies/nle/editor_jni/NLESegmentImageSticker;)J
.end method

.method public static final native NLESegmentImageSticker_getImageFile(JLcom/bytedance/ies/nle/editor_jni/NLESegmentImageSticker;)J
.end method

.method public static final native NLESegmentImageSticker_getResource(JLcom/bytedance/ies/nle/editor_jni/NLESegmentImageSticker;)J
.end method

.method public static final native NLESegmentImageSticker_getType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentImageSticker;)I
.end method

.method public static final native NLESegmentImageSticker_setClip(JLcom/bytedance/ies/nle/editor_jni/NLESegmentImageSticker;JLcom/bytedance/ies/nle/editor_jni/NLEStyClip;)V
.end method

.method public static final native NLESegmentImageSticker_setCrop(JLcom/bytedance/ies/nle/editor_jni/NLESegmentImageSticker;JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)V
.end method

.method public static final native NLESegmentImageSticker_setImageFile(JLcom/bytedance/ies/nle/editor_jni/NLESegmentImageSticker;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
.end method

.method public static final native NLESegmentImageVideoAnimation_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLESegmentImageVideoAnimation_clone(JLcom/bytedance/ies/nle/editor_jni/NLESegmentImageVideoAnimation;)J
.end method

.method public static final native NLESegmentImageVideoAnimation_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLESegmentImageVideoAnimation_getBeginScale(JLcom/bytedance/ies/nle/editor_jni/NLESegmentImageVideoAnimation;)F
.end method

.method public static final native NLESegmentImageVideoAnimation_getEndScale(JLcom/bytedance/ies/nle/editor_jni/NLESegmentImageVideoAnimation;)F
.end method

.method public static final native NLESegmentImageVideoAnimation_hasBeginScale(JLcom/bytedance/ies/nle/editor_jni/NLESegmentImageVideoAnimation;)Z
.end method

.method public static final native NLESegmentImageVideoAnimation_hasEndScale(JLcom/bytedance/ies/nle/editor_jni/NLESegmentImageVideoAnimation;)Z
.end method

.method public static final native NLESegmentImageVideoAnimation_setBeginScale(JLcom/bytedance/ies/nle/editor_jni/NLESegmentImageVideoAnimation;F)V
.end method

.method public static final native NLESegmentImageVideoAnimation_setEndScale(JLcom/bytedance/ies/nle/editor_jni/NLESegmentImageVideoAnimation;F)V
.end method

.method public static final native NLESegmentImage_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLESegmentImage_clone(JLcom/bytedance/ies/nle/editor_jni/NLESegmentImage;)J
.end method

.method public static final native NLESegmentImage_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLESegmentImage_getAlpha(JLcom/bytedance/ies/nle/editor_jni/NLESegmentImage;)F
.end method

.method public static final native NLESegmentImage_getCanvasStyle(JLcom/bytedance/ies/nle/editor_jni/NLESegmentImage;)J
.end method

.method public static final native NLESegmentImage_getClip(JLcom/bytedance/ies/nle/editor_jni/NLESegmentImage;)J
.end method

.method public static final native NLESegmentImage_getCrop(JLcom/bytedance/ies/nle/editor_jni/NLESegmentImage;)J
.end method

.method public static final native NLESegmentImage_getImageFile(JLcom/bytedance/ies/nle/editor_jni/NLESegmentImage;)J
.end method

.method public static final native NLESegmentImage_getResource(JLcom/bytedance/ies/nle/editor_jni/NLESegmentImage;)J
.end method

.method public static final native NLESegmentImage_hasAlpha(JLcom/bytedance/ies/nle/editor_jni/NLESegmentImage;)Z
.end method

.method public static final native NLESegmentImage_setAlpha(JLcom/bytedance/ies/nle/editor_jni/NLESegmentImage;F)V
.end method

.method public static final native NLESegmentImage_setCanvasStyle(JLcom/bytedance/ies/nle/editor_jni/NLESegmentImage;JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;)V
.end method

.method public static final native NLESegmentImage_setClip(JLcom/bytedance/ies/nle/editor_jni/NLESegmentImage;JLcom/bytedance/ies/nle/editor_jni/NLEStyClip;)V
.end method

.method public static final native NLESegmentImage_setCrop(JLcom/bytedance/ies/nle/editor_jni/NLESegmentImage;JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)V
.end method

.method public static final native NLESegmentImage_setImageFile(JLcom/bytedance/ies/nle/editor_jni/NLESegmentImage;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
.end method

.method public static final native NLESegmentInfoSticker_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLESegmentInfoSticker_clone(JLcom/bytedance/ies/nle/editor_jni/NLESegmentInfoSticker;)J
.end method

.method public static final native NLESegmentInfoSticker_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLESegmentInfoSticker_getAddWithBuffer(JLcom/bytedance/ies/nle/editor_jni/NLESegmentInfoSticker;)Z
.end method

.method public static final native NLESegmentInfoSticker_getEffectSDKFile(JLcom/bytedance/ies/nle/editor_jni/NLESegmentInfoSticker;)J
.end method

.method public static final native NLESegmentInfoSticker_getResource(JLcom/bytedance/ies/nle/editor_jni/NLESegmentInfoSticker;)J
.end method

.method public static final native NLESegmentInfoSticker_hasAddWithBuffer(JLcom/bytedance/ies/nle/editor_jni/NLESegmentInfoSticker;)Z
.end method

.method public static final native NLESegmentInfoSticker_setAddWithBuffer(JLcom/bytedance/ies/nle/editor_jni/NLESegmentInfoSticker;Z)V
.end method

.method public static final native NLESegmentInfoSticker_setEffectSDKFile(JLcom/bytedance/ies/nle/editor_jni/NLESegmentInfoSticker;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
.end method

.method public static final native NLESegmentIntegrationFilter_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLESegmentIntegrationFilter_addEffectKeyValuePair(JLcom/bytedance/ies/nle/editor_jni/NLESegmentIntegrationFilter;JLcom/bytedance/ies/nle/editor_jni/NLEStringFloatPair;)V
.end method

.method public static final native NLESegmentIntegrationFilter_clearEffectKeyValuePair(JLcom/bytedance/ies/nle/editor_jni/NLESegmentIntegrationFilter;)V
.end method

.method public static final native NLESegmentIntegrationFilter_clone(JLcom/bytedance/ies/nle/editor_jni/NLESegmentIntegrationFilter;)J
.end method

.method public static final native NLESegmentIntegrationFilter_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLESegmentIntegrationFilter_getEffectKeyValuePairs(JLcom/bytedance/ies/nle/editor_jni/NLESegmentIntegrationFilter;)J
.end method

.method public static final native NLESegmentIntegrationFilter_removeEffectKeyValuePair(JLcom/bytedance/ies/nle/editor_jni/NLESegmentIntegrationFilter;JLcom/bytedance/ies/nle/editor_jni/NLEStringFloatPair;)Z
.end method

.method public static final native NLESegmentIntegrationFilter_toEffectJsonString(JLcom/bytedance/ies/nle/editor_jni/NLESegmentIntegrationFilter;)Ljava/lang/String;
.end method

.method public static final native NLESegmentMV_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLESegmentMV_TYPE_AUDIO_get()Ljava/lang/String;
.end method

.method public static final native NLESegmentMV_TYPE_BGIMG_get()Ljava/lang/String;
.end method

.method public static final native NLESegmentMV_TYPE_GIF_get()Ljava/lang/String;
.end method

.method public static final native NLESegmentMV_TYPE_IMAGE_get()Ljava/lang/String;
.end method

.method public static final native NLESegmentMV_TYPE_RGBA_get()Ljava/lang/String;
.end method

.method public static final native NLESegmentMV_TYPE_TEXT_get()Ljava/lang/String;
.end method

.method public static final native NLESegmentMV_TYPE_VIDEO_get()Ljava/lang/String;
.end method

.method public static final native NLESegmentMV_clone(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;)J
.end method

.method public static final native NLESegmentMV_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLESegmentMV_getClip(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;)J
.end method

.method public static final native NLESegmentMV_getCrop(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;)J
.end method

.method public static final native NLESegmentMV_getHeight(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;)J
.end method

.method public static final native NLESegmentMV_getResource(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;)J
.end method

.method public static final native NLESegmentMV_getSourceFile(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;)J
.end method

.method public static final native NLESegmentMV_getSourceFileType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;)Ljava/lang/String;
.end method

.method public static final native NLESegmentMV_getTimeClipEnd(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;)J
.end method

.method public static final native NLESegmentMV_getTimeClipStart(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;)J
.end method

.method public static final native NLESegmentMV_getVolume(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;)F
.end method

.method public static final native NLESegmentMV_getWidth(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;)J
.end method

.method public static final native NLESegmentMV_hasHeight(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;)Z
.end method

.method public static final native NLESegmentMV_hasSourceFileType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;)Z
.end method

.method public static final native NLESegmentMV_hasTimeClipEnd(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;)Z
.end method

.method public static final native NLESegmentMV_hasTimeClipStart(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;)Z
.end method

.method public static final native NLESegmentMV_hasVolume(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;)Z
.end method

.method public static final native NLESegmentMV_hasWidth(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;)Z
.end method

.method public static final native NLESegmentMV_setClip(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;JLcom/bytedance/ies/nle/editor_jni/NLEStyClip;)V
.end method

.method public static final native NLESegmentMV_setCrop(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)V
.end method

.method public static final native NLESegmentMV_setHeight(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;J)V
.end method

.method public static final native NLESegmentMV_setSourceFile(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
.end method

.method public static final native NLESegmentMV_setSourceFileType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;Ljava/lang/String;)V
.end method

.method public static final native NLESegmentMV_setTimeClipEnd(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;J)V
.end method

.method public static final native NLESegmentMV_setTimeClipStart(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;J)V
.end method

.method public static final native NLESegmentMV_setVolume(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;F)V
.end method

.method public static final native NLESegmentMV_setWidth(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;J)V
.end method

.method public static final native NLESegmentMask_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLESegmentMask_clone(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMask;)J
.end method

.method public static final native NLESegmentMask_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLESegmentMask_getAspectRatio(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMask;)F
.end method

.method public static final native NLESegmentMask_getCenterX(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMask;)F
.end method

.method public static final native NLESegmentMask_getCenterY(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMask;)F
.end method

.method public static final native NLESegmentMask_getEffectSDKMask(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMask;)J
.end method

.method public static final native NLESegmentMask_getFeather(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMask;)F
.end method

.method public static final native NLESegmentMask_getHeight(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMask;)F
.end method

.method public static final native NLESegmentMask_getInvert(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMask;)Z
.end method

.method public static final native NLESegmentMask_getMaskType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMask;)Ljava/lang/String;
.end method

.method public static final native NLESegmentMask_getResource(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMask;)J
.end method

.method public static final native NLESegmentMask_getRotation(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMask;)F
.end method

.method public static final native NLESegmentMask_getRoundCorner(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMask;)F
.end method

.method public static final native NLESegmentMask_getWidth(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMask;)F
.end method

.method public static final native NLESegmentMask_hasAspectRatio(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMask;)Z
.end method

.method public static final native NLESegmentMask_hasCenterX(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMask;)Z
.end method

.method public static final native NLESegmentMask_hasCenterY(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMask;)Z
.end method

.method public static final native NLESegmentMask_hasFeather(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMask;)Z
.end method

.method public static final native NLESegmentMask_hasHeight(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMask;)Z
.end method

.method public static final native NLESegmentMask_hasInvert(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMask;)Z
.end method

.method public static final native NLESegmentMask_hasMaskType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMask;)Z
.end method

.method public static final native NLESegmentMask_hasRotation(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMask;)Z
.end method

.method public static final native NLESegmentMask_hasRoundCorner(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMask;)Z
.end method

.method public static final native NLESegmentMask_hasWidth(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMask;)Z
.end method

.method public static final native NLESegmentMask_setAspectRatio(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMask;F)V
.end method

.method public static final native NLESegmentMask_setCenterX(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMask;F)V
.end method

.method public static final native NLESegmentMask_setCenterY(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMask;F)V
.end method

.method public static final native NLESegmentMask_setEffectSDKMask(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMask;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
.end method

.method public static final native NLESegmentMask_setFeather(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMask;F)V
.end method

.method public static final native NLESegmentMask_setHeight(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMask;F)V
.end method

.method public static final native NLESegmentMask_setInvert(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMask;Z)V
.end method

.method public static final native NLESegmentMask_setMaskType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMask;Ljava/lang/String;)V
.end method

.method public static final native NLESegmentMask_setRotation(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMask;F)V
.end method

.method public static final native NLESegmentMask_setRoundCorner(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMask;F)V
.end method

.method public static final native NLESegmentMask_setWidth(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMask;F)V
.end method

.method public static final native NLESegmentMask_toEffectJson(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMask;JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)Ljava/lang/String;
.end method

.method public static final native NLESegmentPlay_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLESegmentPlay_clone(JLcom/bytedance/ies/nle/editor_jni/NLESegmentPlay;)J
.end method

.method public static final native NLESegmentPlay_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLESegmentPlay_getAVFile(JLcom/bytedance/ies/nle/editor_jni/NLESegmentPlay;)J
.end method

.method public static final native NLESegmentPlay_getCover(JLcom/bytedance/ies/nle/editor_jni/NLESegmentPlay;)Ljava/lang/String;
.end method

.method public static final native NLESegmentPlay_getCoverScale(JLcom/bytedance/ies/nle/editor_jni/NLESegmentPlay;)F
.end method

.method public static final native NLESegmentPlay_hasCover(JLcom/bytedance/ies/nle/editor_jni/NLESegmentPlay;)Z
.end method

.method public static final native NLESegmentPlay_hasCoverScale(JLcom/bytedance/ies/nle/editor_jni/NLESegmentPlay;)Z
.end method

.method public static final native NLESegmentPlay_setAVFile(JLcom/bytedance/ies/nle/editor_jni/NLESegmentPlay;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
.end method

.method public static final native NLESegmentPlay_setCover(JLcom/bytedance/ies/nle/editor_jni/NLESegmentPlay;Ljava/lang/String;)V
.end method

.method public static final native NLESegmentPlay_setCoverScale(JLcom/bytedance/ies/nle/editor_jni/NLESegmentPlay;F)V
.end method

.method public static final native NLESegmentSticker_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLESegmentSticker_addStickerAnimation(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;JLcom/bytedance/ies/nle/editor_jni/NLEStyStickerAnim;)V
.end method

.method public static final native NLESegmentSticker_clearStickerAnimation(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;)V
.end method

.method public static final native NLESegmentSticker_clone(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;)J
.end method

.method public static final native NLESegmentSticker_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLESegmentSticker_getAlpha(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;)F
.end method

.method public static final native NLESegmentSticker_getAnimation(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;)J
.end method

.method public static final native NLESegmentSticker_getEffectInfo(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;)Ljava/lang/String;
.end method

.method public static final native NLESegmentSticker_getInfoStringList(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;)J
.end method

.method public static final native NLESegmentSticker_getStickerAnimations(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;)J
.end method

.method public static final native NLESegmentSticker_hasAlpha(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;)Z
.end method

.method public static final native NLESegmentSticker_hasEffectInfo(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;)Z
.end method

.method public static final native NLESegmentSticker_removeStickerAnimation(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;JLcom/bytedance/ies/nle/editor_jni/NLEStyStickerAnim;)Z
.end method

.method public static final native NLESegmentSticker_setAlpha(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;F)V
.end method

.method public static final native NLESegmentSticker_setAnimation(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;JLcom/bytedance/ies/nle/editor_jni/NLEStyStickerAnim;)V
.end method

.method public static final native NLESegmentSticker_setEffectInfo(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;Ljava/lang/String;)V
.end method

.method public static final native NLESegmentSticker_setInfoStringList(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;JLcom/bytedance/ies/nle/editor_jni/VecString;)V
.end method

.method public static final native NLESegmentSubtitleSticker_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLESegmentSubtitleSticker_clone(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;)J
.end method

.method public static final native NLESegmentSubtitleSticker_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLESegmentSubtitleSticker_getConnectedAudioSlotUUID(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;)Ljava/lang/String;
.end method

.method public static final native NLESegmentSubtitleSticker_getEffectSDKFile(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;)J
.end method

.method public static final native NLESegmentSubtitleSticker_getResource(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;)J
.end method

.method public static final native NLESegmentSubtitleSticker_getSRTFile(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;)J
.end method

.method public static final native NLESegmentSubtitleSticker_getStyle(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;)J
.end method

.method public static final native NLESegmentSubtitleSticker_getTimeClipEnd(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;)J
.end method

.method public static final native NLESegmentSubtitleSticker_getTimeClipStart(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;)J
.end method

.method public static final native NLESegmentSubtitleSticker_hasConnectedAudioSlotUUID(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;)Z
.end method

.method public static final native NLESegmentSubtitleSticker_hasTimeClipEnd(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;)Z
.end method

.method public static final native NLESegmentSubtitleSticker_hasTimeClipStart(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;)Z
.end method

.method public static final native NLESegmentSubtitleSticker_setConnectedAudioSlotUUID(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;Ljava/lang/String;)V
.end method

.method public static final native NLESegmentSubtitleSticker_setEffectSDKFile(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
.end method

.method public static final native NLESegmentSubtitleSticker_setSRTFile(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
.end method

.method public static final native NLESegmentSubtitleSticker_setStyle(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)V
.end method

.method public static final native NLESegmentSubtitleSticker_setTimeClipEnd(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;J)V
.end method

.method public static final native NLESegmentSubtitleSticker_setTimeClipStart(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;J)V
.end method

.method public static final native NLESegmentTextSticker_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLESegmentTextSticker_clone(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;)J
.end method

.method public static final native NLESegmentTextSticker_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLESegmentTextSticker_getContent(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;)Ljava/lang/String;
.end method

.method public static final native NLESegmentTextSticker_getStyle(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;)J
.end method

.method public static final native NLESegmentTextSticker_getType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;)I
.end method

.method public static final native NLESegmentTextSticker_hasContent(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;)Z
.end method

.method public static final native NLESegmentTextSticker_setContent(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;Ljava/lang/String;)V
.end method

.method public static final native NLESegmentTextSticker_setEffectSDKJsonString(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;Ljava/lang/String;)V
.end method

.method public static final native NLESegmentTextSticker_setStyle(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)V
.end method

.method public static final native NLESegmentTextSticker_toEffectJson(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;)Ljava/lang/String;
.end method

.method public static final native NLESegmentTextTemplate_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLESegmentTextTemplate_addFallbackFontList(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTextTemplate;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
.end method

.method public static final native NLESegmentTextTemplate_addFont(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTextTemplate;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
.end method

.method public static final native NLESegmentTextTemplate_addTextClip(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTextTemplate;JLcom/bytedance/ies/nle/editor_jni/NLETextTemplateClip;)V
.end method

.method public static final native NLESegmentTextTemplate_clearFallbackFontList(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTextTemplate;)V
.end method

.method public static final native NLESegmentTextTemplate_clearFont(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTextTemplate;)V
.end method

.method public static final native NLESegmentTextTemplate_clearTextClip(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTextTemplate;)V
.end method

.method public static final native NLESegmentTextTemplate_clone(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTextTemplate;)J
.end method

.method public static final native NLESegmentTextTemplate_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLESegmentTextTemplate_getEffectSDKFile(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTextTemplate;)J
.end method

.method public static final native NLESegmentTextTemplate_getFallbackFontLists(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTextTemplate;)J
.end method

.method public static final native NLESegmentTextTemplate_getFonts(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTextTemplate;)J
.end method

.method public static final native NLESegmentTextTemplate_getResource(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTextTemplate;)J
.end method

.method public static final native NLESegmentTextTemplate_getTextClips(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTextTemplate;)J
.end method

.method public static final native NLESegmentTextTemplate_getType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTextTemplate;)I
.end method

.method public static final native NLESegmentTextTemplate_removeFallbackFontList(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTextTemplate;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)Z
.end method

.method public static final native NLESegmentTextTemplate_removeFont(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTextTemplate;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)Z
.end method

.method public static final native NLESegmentTextTemplate_removeTextClip(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTextTemplate;JLcom/bytedance/ies/nle/editor_jni/NLETextTemplateClip;)Z
.end method

.method public static final native NLESegmentTextTemplate_setEffectSDKFile(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTextTemplate;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
.end method

.method public static final native NLESegmentTimeEffect_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLESegmentTimeEffect_clone(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTimeEffect;)J
.end method

.method public static final native NLESegmentTimeEffect_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLESegmentTimeEffect_getTimeEffectType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTimeEffect;)J
.end method

.method public static final native NLESegmentTimeEffect_getType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTimeEffect;)I
.end method

.method public static final native NLESegmentTimeEffect_hasTimeEffectType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTimeEffect;)Z
.end method

.method public static final native NLESegmentTimeEffect_setTimeEffectType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTimeEffect;J)V
.end method

.method public static final native NLESegmentTransition_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLESegmentTransition_clone(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;)J
.end method

.method public static final native NLESegmentTransition_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLESegmentTransition_getDuration(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;)J
.end method

.method public static final native NLESegmentTransition_getEffectSDKTransition(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;)J
.end method

.method public static final native NLESegmentTransition_getMediaTransType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;)I
.end method

.method public static final native NLESegmentTransition_getOverlap(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;)Z
.end method

.method public static final native NLESegmentTransition_getResource(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;)J
.end method

.method public static final native NLESegmentTransition_getTransitionDuration(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;)J
.end method

.method public static final native NLESegmentTransition_hasMediaTransType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;)Z
.end method

.method public static final native NLESegmentTransition_hasOverlap(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;)Z
.end method

.method public static final native NLESegmentTransition_hasTransitionDuration(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;)Z
.end method

.method public static final native NLESegmentTransition_setEffectSDKTransition(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
.end method

.method public static final native NLESegmentTransition_setMediaTransType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;I)V
.end method

.method public static final native NLESegmentTransition_setOverlap(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;Z)V
.end method

.method public static final native NLESegmentTransition_setTransitionDuration(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;J)V
.end method

.method public static final native NLESegmentVideoAnimation_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLESegmentVideoAnimation_clone(JLcom/bytedance/ies/nle/editor_jni/NLESegmentVideoAnimation;)J
.end method

.method public static final native NLESegmentVideoAnimation_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLESegmentVideoAnimation_getAnimJsonParam(JLcom/bytedance/ies/nle/editor_jni/NLESegmentVideoAnimation;)Ljava/lang/String;
.end method

.method public static final native NLESegmentVideoAnimation_getAnimationDuration(JLcom/bytedance/ies/nle/editor_jni/NLESegmentVideoAnimation;)J
.end method

.method public static final native NLESegmentVideoAnimation_getDuration(JLcom/bytedance/ies/nle/editor_jni/NLESegmentVideoAnimation;)J
.end method

.method public static final native NLESegmentVideoAnimation_getEffectSDKVideoAnimation(JLcom/bytedance/ies/nle/editor_jni/NLESegmentVideoAnimation;)J
.end method

.method public static final native NLESegmentVideoAnimation_getResource(JLcom/bytedance/ies/nle/editor_jni/NLESegmentVideoAnimation;)J
.end method

.method public static final native NLESegmentVideoAnimation_hasAnimJsonParam(JLcom/bytedance/ies/nle/editor_jni/NLESegmentVideoAnimation;)Z
.end method

.method public static final native NLESegmentVideoAnimation_hasAnimationDuration(JLcom/bytedance/ies/nle/editor_jni/NLESegmentVideoAnimation;)Z
.end method

.method public static final native NLESegmentVideoAnimation_setAnimJsonParam(JLcom/bytedance/ies/nle/editor_jni/NLESegmentVideoAnimation;Ljava/lang/String;)V
.end method

.method public static final native NLESegmentVideoAnimation_setAnimationDuration(JLcom/bytedance/ies/nle/editor_jni/NLESegmentVideoAnimation;J)V
.end method

.method public static final native NLESegmentVideoAnimation_setEffectSDKVideoAnimation(JLcom/bytedance/ies/nle/editor_jni/NLESegmentVideoAnimation;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
.end method

.method public static final native NLESegmentVideo_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLESegmentVideo_clone(JLcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;)J
.end method

.method public static final native NLESegmentVideo_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLESegmentVideo_getAlpha(JLcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;)F
.end method

.method public static final native NLESegmentVideo_getBlendFile(JLcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;)J
.end method

.method public static final native NLESegmentVideo_getCanvasStyle(JLcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;)J
.end method

.method public static final native NLESegmentVideo_getClip(JLcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;)J
.end method

.method public static final native NLESegmentVideo_getCrop(JLcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;)J
.end method

.method public static final native NLESegmentVideo_getEnableAudio(JLcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;)Z
.end method

.method public static final native NLESegmentVideo_hasAlpha(JLcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;)Z
.end method

.method public static final native NLESegmentVideo_hasEnableAudio(JLcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;)Z
.end method

.method public static final native NLESegmentVideo_setAlpha(JLcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;F)V
.end method

.method public static final native NLESegmentVideo_setBlendFile(JLcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
.end method

.method public static final native NLESegmentVideo_setCanvasStyle(JLcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;)V
.end method

.method public static final native NLESegmentVideo_setClip(JLcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;JLcom/bytedance/ies/nle/editor_jni/NLEStyClip;)V
.end method

.method public static final native NLESegmentVideo_setCrop(JLcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)V
.end method

.method public static final native NLESegmentVideo_setEnableAudio(JLcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;Z)V
.end method

.method public static final native NLESegment_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLESegment_getDuration(JLcom/bytedance/ies/nle/editor_jni/NLESegment;)J
.end method

.method public static final native NLESegment_getResource(JLcom/bytedance/ies/nle/editor_jni/NLESegment;)J
.end method

.method public static final native NLESegment_getType(JLcom/bytedance/ies/nle/editor_jni/NLESegment;)I
.end method

.method public static final native NLESetting_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLESetting_clone(JLcom/bytedance/ies/nle/editor_jni/NLESetting;)J
.end method

.method public static final native NLESetting_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLESetting_getCartesion(JLcom/bytedance/ies/nle/editor_jni/NLESetting;)Z
.end method

.method public static final native NLESetting_hasCartesion(JLcom/bytedance/ies/nle/editor_jni/NLESetting;)Z
.end method

.method public static final native NLESetting_setCartesion(JLcom/bytedance/ies/nle/editor_jni/NLESetting;Z)V
.end method

.method public static final native NLESizeUtils_NLESizeMake(FF)J
.end method

.method public static final native NLESize_debug(JLcom/bytedance/ies/nle/editor_jni/NLESize;)Ljava/lang/String;
.end method

.method public static final native NLESize_height_get(JLcom/bytedance/ies/nle/editor_jni/NLESize;)F
.end method

.method public static final native NLESize_height_set(JLcom/bytedance/ies/nle/editor_jni/NLESize;F)V
.end method

.method public static final native NLESize_valid(JLcom/bytedance/ies/nle/editor_jni/NLESize;)Z
.end method

.method public static final native NLESize_width_get(JLcom/bytedance/ies/nle/editor_jni/NLESize;)F
.end method

.method public static final native NLESize_width_set(JLcom/bytedance/ies/nle/editor_jni/NLESize;F)V
.end method

.method public static final native NLEStringFloatPair_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLEStringFloatPair_clone(JLcom/bytedance/ies/nle/editor_jni/NLEStringFloatPair;)J
.end method

.method public static final native NLEStringFloatPair_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLEStringFloatPair_getFirst(JLcom/bytedance/ies/nle/editor_jni/NLEStringFloatPair;)Ljava/lang/String;
.end method

.method public static final native NLEStringFloatPair_getSecond(JLcom/bytedance/ies/nle/editor_jni/NLEStringFloatPair;)F
.end method

.method public static final native NLEStringFloatPair_hasFirst(JLcom/bytedance/ies/nle/editor_jni/NLEStringFloatPair;)Z
.end method

.method public static final native NLEStringFloatPair_hasSecond(JLcom/bytedance/ies/nle/editor_jni/NLEStringFloatPair;)Z
.end method

.method public static final native NLEStringFloatPair_setFirst(JLcom/bytedance/ies/nle/editor_jni/NLEStringFloatPair;Ljava/lang/String;)V
.end method

.method public static final native NLEStringFloatPair_setSecond(JLcom/bytedance/ies/nle/editor_jni/NLEStringFloatPair;F)V
.end method

.method public static final native NLEStyCanvas_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLEStyCanvas_clone(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;)J
.end method

.method public static final native NLEStyCanvas_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLEStyCanvas_getAntialiasing(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;)Z
.end method

.method public static final native NLEStyCanvas_getBlurRadius(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;)F
.end method

.method public static final native NLEStyCanvas_getBorderColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;)J
.end method

.method public static final native NLEStyCanvas_getBorderWidth(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;)J
.end method

.method public static final native NLEStyCanvas_getColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;)J
.end method

.method public static final native NLEStyCanvas_getEndColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;)J
.end method

.method public static final native NLEStyCanvas_getImage(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;)J
.end method

.method public static final native NLEStyCanvas_getStartColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;)J
.end method

.method public static final native NLEStyCanvas_getType(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;)I
.end method

.method public static final native NLEStyCanvas_hasAntialiasing(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;)Z
.end method

.method public static final native NLEStyCanvas_hasBlurRadius(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;)Z
.end method

.method public static final native NLEStyCanvas_hasBorderColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;)Z
.end method

.method public static final native NLEStyCanvas_hasBorderWidth(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;)Z
.end method

.method public static final native NLEStyCanvas_hasColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;)Z
.end method

.method public static final native NLEStyCanvas_hasEndColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;)Z
.end method

.method public static final native NLEStyCanvas_hasStartColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;)Z
.end method

.method public static final native NLEStyCanvas_hasType(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;)Z
.end method

.method public static final native NLEStyCanvas_setAntialiasing(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;Z)V
.end method

.method public static final native NLEStyCanvas_setBlurRadius(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;F)V
.end method

.method public static final native NLEStyCanvas_setBorderColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;J)V
.end method

.method public static final native NLEStyCanvas_setBorderWidth(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;J)V
.end method

.method public static final native NLEStyCanvas_setColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;J)V
.end method

.method public static final native NLEStyCanvas_setEndColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;J)V
.end method

.method public static final native NLEStyCanvas_setImage(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
.end method

.method public static final native NLEStyCanvas_setStartColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;J)V
.end method

.method public static final native NLEStyCanvas_setType(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;I)V
.end method

.method public static final native NLEStyClip_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLEStyClip_clone(JLcom/bytedance/ies/nle/editor_jni/NLEStyClip;)J
.end method

.method public static final native NLEStyClip_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLEStyClip_getLeftLower(JLcom/bytedance/ies/nle/editor_jni/NLEStyClip;)J
.end method

.method public static final native NLEStyClip_getLeftUpper(JLcom/bytedance/ies/nle/editor_jni/NLEStyClip;)J
.end method

.method public static final native NLEStyClip_getRightLower(JLcom/bytedance/ies/nle/editor_jni/NLEStyClip;)J
.end method

.method public static final native NLEStyClip_getRightUpper(JLcom/bytedance/ies/nle/editor_jni/NLEStyClip;)J
.end method

.method public static final native NLEStyClip_setLeftLower(JLcom/bytedance/ies/nle/editor_jni/NLEStyClip;JLcom/bytedance/ies/nle/editor_jni/NLEPoint;)V
.end method

.method public static final native NLEStyClip_setLeftUpper(JLcom/bytedance/ies/nle/editor_jni/NLEStyClip;JLcom/bytedance/ies/nle/editor_jni/NLEPoint;)V
.end method

.method public static final native NLEStyClip_setRightLower(JLcom/bytedance/ies/nle/editor_jni/NLEStyClip;JLcom/bytedance/ies/nle/editor_jni/NLEPoint;)V
.end method

.method public static final native NLEStyClip_setRightUpper(JLcom/bytedance/ies/nle/editor_jni/NLEStyClip;JLcom/bytedance/ies/nle/editor_jni/NLEPoint;)V
.end method

.method public static final native NLEStyClip_toCrop(JLcom/bytedance/ies/nle/editor_jni/NLEStyClip;)J
.end method

.method public static final native NLEStyCrop_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLEStyCrop_clone(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)J
.end method

.method public static final native NLEStyCrop_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLEStyCrop_getXLeft(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)F
.end method

.method public static final native NLEStyCrop_getXLeftLower(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)F
.end method

.method public static final native NLEStyCrop_getXLeftUpper(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)F
.end method

.method public static final native NLEStyCrop_getXRight(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)F
.end method

.method public static final native NLEStyCrop_getXRightLower(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)F
.end method

.method public static final native NLEStyCrop_getXRightUpper(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)F
.end method

.method public static final native NLEStyCrop_getYLeftLower(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)F
.end method

.method public static final native NLEStyCrop_getYLeftUpper(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)F
.end method

.method public static final native NLEStyCrop_getYLower(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)F
.end method

.method public static final native NLEStyCrop_getYRightLower(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)F
.end method

.method public static final native NLEStyCrop_getYRightUpper(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)F
.end method

.method public static final native NLEStyCrop_getYUpper(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)F
.end method

.method public static final native NLEStyCrop_hasXLeft(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)Z
.end method

.method public static final native NLEStyCrop_hasXLeftLower(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)Z
.end method

.method public static final native NLEStyCrop_hasXRight(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)Z
.end method

.method public static final native NLEStyCrop_hasXRightUpper(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)Z
.end method

.method public static final native NLEStyCrop_hasYLeftLower(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)Z
.end method

.method public static final native NLEStyCrop_hasYLower(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)Z
.end method

.method public static final native NLEStyCrop_hasYRightUpper(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)Z
.end method

.method public static final native NLEStyCrop_hasYUpper(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)Z
.end method

.method public static final native NLEStyCrop_setXLeft(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;F)V
.end method

.method public static final native NLEStyCrop_setXLeftLower(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;F)V
.end method

.method public static final native NLEStyCrop_setXLeftUpper(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;F)V
.end method

.method public static final native NLEStyCrop_setXRight(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;F)V
.end method

.method public static final native NLEStyCrop_setXRightLower(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;F)V
.end method

.method public static final native NLEStyCrop_setXRightUpper(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;F)V
.end method

.method public static final native NLEStyCrop_setYLeftLower(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;F)V
.end method

.method public static final native NLEStyCrop_setYLeftUpper(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;F)V
.end method

.method public static final native NLEStyCrop_setYLower(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;F)V
.end method

.method public static final native NLEStyCrop_setYRightLower(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;F)V
.end method

.method public static final native NLEStyCrop_setYRightUpper(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;F)V
.end method

.method public static final native NLEStyCrop_setYUpper(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;F)V
.end method

.method public static final native NLEStyStickerAnim_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLEStyStickerAnim_clone(JLcom/bytedance/ies/nle/editor_jni/NLEStyStickerAnim;)J
.end method

.method public static final native NLEStyStickerAnim_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLEStyStickerAnim_getInAnim(JLcom/bytedance/ies/nle/editor_jni/NLEStyStickerAnim;)J
.end method

.method public static final native NLEStyStickerAnim_getInDuration(JLcom/bytedance/ies/nle/editor_jni/NLEStyStickerAnim;)I
.end method

.method public static final native NLEStyStickerAnim_getLoop(JLcom/bytedance/ies/nle/editor_jni/NLEStyStickerAnim;)Z
.end method

.method public static final native NLEStyStickerAnim_getOutAnim(JLcom/bytedance/ies/nle/editor_jni/NLEStyStickerAnim;)J
.end method

.method public static final native NLEStyStickerAnim_getOutDuration(JLcom/bytedance/ies/nle/editor_jni/NLEStyStickerAnim;)I
.end method

.method public static final native NLEStyStickerAnim_hasInDuration(JLcom/bytedance/ies/nle/editor_jni/NLEStyStickerAnim;)Z
.end method

.method public static final native NLEStyStickerAnim_hasLoop(JLcom/bytedance/ies/nle/editor_jni/NLEStyStickerAnim;)Z
.end method

.method public static final native NLEStyStickerAnim_hasOutDuration(JLcom/bytedance/ies/nle/editor_jni/NLEStyStickerAnim;)Z
.end method

.method public static final native NLEStyStickerAnim_setInAnim(JLcom/bytedance/ies/nle/editor_jni/NLEStyStickerAnim;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
.end method

.method public static final native NLEStyStickerAnim_setInDuration(JLcom/bytedance/ies/nle/editor_jni/NLEStyStickerAnim;I)V
.end method

.method public static final native NLEStyStickerAnim_setLoop(JLcom/bytedance/ies/nle/editor_jni/NLEStyStickerAnim;Z)V
.end method

.method public static final native NLEStyStickerAnim_setOutAnim(JLcom/bytedance/ies/nle/editor_jni/NLEStyStickerAnim;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
.end method

.method public static final native NLEStyStickerAnim_setOutDuration(JLcom/bytedance/ies/nle/editor_jni/NLEStyStickerAnim;I)V
.end method

.method public static final native NLEStyText_ARGB2RGBA(J)J
.end method

.method public static final native NLEStyText_RGBA2ARGB(JLcom/bytedance/ies/nle/editor_jni/VecFloat;)J
.end method

.method public static final native NLEStyText_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLEStyText_addFallbackFontList(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
.end method

.method public static final native NLEStyText_argb2hex(J)Ljava/lang/String;
.end method

.method public static final native NLEStyText_clearFallbackFontList(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)V
.end method

.method public static final native NLEStyText_clone(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)J
.end method

.method public static final native NLEStyText_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLEStyText_getAlignType(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)I
.end method

.method public static final native NLEStyText_getBackground(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z
.end method

.method public static final native NLEStyText_getBackgroundColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)J
.end method

.method public static final native NLEStyText_getBackgroundColorVector(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)J
.end method

.method public static final native NLEStyText_getBackgroundHeight(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)F
.end method

.method public static final native NLEStyText_getBackgroundHorizontalOffset(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)F
.end method

.method public static final native NLEStyText_getBackgroundRoundCorner(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z
.end method

.method public static final native NLEStyText_getBackgroundRoundRadius(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)F
.end method

.method public static final native NLEStyText_getBackgroundRoundRadiusScale(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)F
.end method

.method public static final native NLEStyText_getBackgroundVerticalOffset(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)F
.end method

.method public static final native NLEStyText_getBackgroundWidth(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)F
.end method

.method public static final native NLEStyText_getBold(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z
.end method

.method public static final native NLEStyText_getBoldWidth(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)F
.end method

.method public static final native NLEStyText_getCharSpacing(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)F
.end method

.method public static final native NLEStyText_getFallbackFont(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)J
.end method

.method public static final native NLEStyText_getFallbackFontLists(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)J
.end method

.method public static final native NLEStyText_getFlower(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)J
.end method

.method public static final native NLEStyText_getFont(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)J
.end method

.method public static final native NLEStyText_getFontSize(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)J
.end method

.method public static final native NLEStyText_getInnerPadding(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)F
.end method

.method public static final native NLEStyText_getItalicDegree(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)J
.end method

.method public static final native NLEStyText_getKTVColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)J
.end method

.method public static final native NLEStyText_getKTVColorVector(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)J
.end method

.method public static final native NLEStyText_getKTVOutlineColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)J
.end method

.method public static final native NLEStyText_getKTVOutlineColorVector(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)J
.end method

.method public static final native NLEStyText_getKTVShadowColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)J
.end method

.method public static final native NLEStyText_getKTVShadowColorVector(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)J
.end method

.method public static final native NLEStyText_getLineGap(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)F
.end method

.method public static final native NLEStyText_getLineMaxWidth(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)F
.end method

.method public static final native NLEStyText_getOneLineTruncated(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z
.end method

.method public static final native NLEStyText_getOutline(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z
.end method

.method public static final native NLEStyText_getOutlineColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)J
.end method

.method public static final native NLEStyText_getOutlineColorVector(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)J
.end method

.method public static final native NLEStyText_getOutlineWidth(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)F
.end method

.method public static final native NLEStyText_getShadow(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z
.end method

.method public static final native NLEStyText_getShadowColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)J
.end method

.method public static final native NLEStyText_getShadowColorVector(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)J
.end method

.method public static final native NLEStyText_getShadowOffsetX(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)F
.end method

.method public static final native NLEStyText_getShadowOffsetY(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)F
.end method

.method public static final native NLEStyText_getShadowSmoothing(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)F
.end method

.method public static final native NLEStyText_getShape(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)J
.end method

.method public static final native NLEStyText_getShapeFlipX(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z
.end method

.method public static final native NLEStyText_getShapeFlipY(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z
.end method

.method public static final native NLEStyText_getTextColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)J
.end method

.method public static final native NLEStyText_getTextColorVector(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)J
.end method

.method public static final native NLEStyText_getTruncatedPostfix(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Ljava/lang/String;
.end method

.method public static final native NLEStyText_getTypeSettingKind(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)I
.end method

.method public static final native NLEStyText_getUnderline(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z
.end method

.method public static final native NLEStyText_getUnderlineOffset(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)F
.end method

.method public static final native NLEStyText_getUnderlineWidth(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)F
.end method

.method public static final native NLEStyText_getUseFlowerDefaultColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z
.end method

.method public static final native NLEStyText_getUseFlowerDefaultColorVector(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)J
.end method

.method public static final native NLEStyText_hasAlignType(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z
.end method

.method public static final native NLEStyText_hasBackground(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z
.end method

.method public static final native NLEStyText_hasBackgroundColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z
.end method

.method public static final native NLEStyText_hasBackgroundHeight(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z
.end method

.method public static final native NLEStyText_hasBackgroundHorizontalOffset(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z
.end method

.method public static final native NLEStyText_hasBackgroundRoundCorner(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z
.end method

.method public static final native NLEStyText_hasBackgroundRoundRadius(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z
.end method

.method public static final native NLEStyText_hasBackgroundRoundRadiusScale(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z
.end method

.method public static final native NLEStyText_hasBackgroundVerticalOffset(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z
.end method

.method public static final native NLEStyText_hasBackgroundWidth(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z
.end method

.method public static final native NLEStyText_hasBold(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z
.end method

.method public static final native NLEStyText_hasBoldWidth(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z
.end method

.method public static final native NLEStyText_hasCharSpacing(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z
.end method

.method public static final native NLEStyText_hasFontSize(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z
.end method

.method public static final native NLEStyText_hasInnerPadding(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z
.end method

.method public static final native NLEStyText_hasItalicDegree(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z
.end method

.method public static final native NLEStyText_hasKTVColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z
.end method

.method public static final native NLEStyText_hasKTVOutlineColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z
.end method

.method public static final native NLEStyText_hasKTVShadowColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z
.end method

.method public static final native NLEStyText_hasLineGap(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z
.end method

.method public static final native NLEStyText_hasLineMaxWidth(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z
.end method

.method public static final native NLEStyText_hasOneLineTruncated(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z
.end method

.method public static final native NLEStyText_hasOutline(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z
.end method

.method public static final native NLEStyText_hasOutlineColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z
.end method

.method public static final native NLEStyText_hasOutlineWidth(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z
.end method

.method public static final native NLEStyText_hasShadow(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z
.end method

.method public static final native NLEStyText_hasShadowColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z
.end method

.method public static final native NLEStyText_hasShadowOffsetX(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z
.end method

.method public static final native NLEStyText_hasShadowOffsetY(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z
.end method

.method public static final native NLEStyText_hasShadowSmoothing(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z
.end method

.method public static final native NLEStyText_hasShapeFlipX(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z
.end method

.method public static final native NLEStyText_hasShapeFlipY(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z
.end method

.method public static final native NLEStyText_hasTextColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z
.end method

.method public static final native NLEStyText_hasTruncatedPostfix(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z
.end method

.method public static final native NLEStyText_hasTypeSettingKind(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z
.end method

.method public static final native NLEStyText_hasUnderline(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z
.end method

.method public static final native NLEStyText_hasUnderlineOffset(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z
.end method

.method public static final native NLEStyText_hasUnderlineWidth(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z
.end method

.method public static final native NLEStyText_hasUseFlowerDefaultColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z
.end method

.method public static final native NLEStyText_removeFallbackFontList(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)Z
.end method

.method public static final native NLEStyText_rgbaArray2RgbHex(JLcom/bytedance/ies/nle/editor_jni/VecFloat;)Ljava/lang/String;
.end method

.method public static final native NLEStyText_rgbaArray2hex(JLcom/bytedance/ies/nle/editor_jni/VecFloat;)Ljava/lang/String;
.end method

.method public static final native NLEStyText_setAlignType(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;I)V
.end method

.method public static final native NLEStyText_setBackground(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;Z)V
.end method

.method public static final native NLEStyText_setBackgroundColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;J)V
.end method

.method public static final native NLEStyText_setBackgroundColorVector(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;JLcom/bytedance/ies/nle/editor_jni/VecFloat;)V
.end method

.method public static final native NLEStyText_setBackgroundHeight(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;F)V
.end method

.method public static final native NLEStyText_setBackgroundHorizontalOffset(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;F)V
.end method

.method public static final native NLEStyText_setBackgroundRoundCorner(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;Z)V
.end method

.method public static final native NLEStyText_setBackgroundRoundRadius(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;F)V
.end method

.method public static final native NLEStyText_setBackgroundRoundRadiusScale(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;F)V
.end method

.method public static final native NLEStyText_setBackgroundVerticalOffset(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;F)V
.end method

.method public static final native NLEStyText_setBackgroundWidth(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;F)V
.end method

.method public static final native NLEStyText_setBold(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;Z)V
.end method

.method public static final native NLEStyText_setBoldWidth(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;F)V
.end method

.method public static final native NLEStyText_setCharSpacing(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;F)V
.end method

.method public static final native NLEStyText_setFallbackFont(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
.end method

.method public static final native NLEStyText_setFlower(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
.end method

.method public static final native NLEStyText_setFont(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
.end method

.method public static final native NLEStyText_setFontSize(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;J)V
.end method

.method public static final native NLEStyText_setInnerPadding(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;F)V
.end method

.method public static final native NLEStyText_setItalicDegree(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;J)V
.end method

.method public static final native NLEStyText_setKTVColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;J)V
.end method

.method public static final native NLEStyText_setKTVColorVector(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;JLcom/bytedance/ies/nle/editor_jni/VecFloat;)V
.end method

.method public static final native NLEStyText_setKTVOutlineColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;J)V
.end method

.method public static final native NLEStyText_setKTVOutlineColorVector(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;JLcom/bytedance/ies/nle/editor_jni/VecFloat;)V
.end method

.method public static final native NLEStyText_setKTVShadowColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;J)V
.end method

.method public static final native NLEStyText_setKTVShadowColorVector(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;JLcom/bytedance/ies/nle/editor_jni/VecFloat;)V
.end method

.method public static final native NLEStyText_setLineGap(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;F)V
.end method

.method public static final native NLEStyText_setLineMaxWidth(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;F)V
.end method

.method public static final native NLEStyText_setOneLineTruncated(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;Z)V
.end method

.method public static final native NLEStyText_setOutline(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;Z)V
.end method

.method public static final native NLEStyText_setOutlineColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;J)V
.end method

.method public static final native NLEStyText_setOutlineColorVector(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;JLcom/bytedance/ies/nle/editor_jni/VecFloat;)V
.end method

.method public static final native NLEStyText_setOutlineWidth(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;F)V
.end method

.method public static final native NLEStyText_setShadow(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;Z)V
.end method

.method public static final native NLEStyText_setShadowColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;J)V
.end method

.method public static final native NLEStyText_setShadowColorVector(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;JLcom/bytedance/ies/nle/editor_jni/VecFloat;)V
.end method

.method public static final native NLEStyText_setShadowOffsetX(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;F)V
.end method

.method public static final native NLEStyText_setShadowOffsetY(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;F)V
.end method

.method public static final native NLEStyText_setShadowSmoothing(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;F)V
.end method

.method public static final native NLEStyText_setShape(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
.end method

.method public static final native NLEStyText_setShapeFlipX(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;Z)V
.end method

.method public static final native NLEStyText_setShapeFlipY(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;Z)V
.end method

.method public static final native NLEStyText_setTextColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;J)V
.end method

.method public static final native NLEStyText_setTextColorVector(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;JLcom/bytedance/ies/nle/editor_jni/VecFloat;)V
.end method

.method public static final native NLEStyText_setTruncatedPostfix(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;Ljava/lang/String;)V
.end method

.method public static final native NLEStyText_setTypeSettingKind(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;I)V
.end method

.method public static final native NLEStyText_setUnderline(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;Z)V
.end method

.method public static final native NLEStyText_setUnderlineOffset(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;F)V
.end method

.method public static final native NLEStyText_setUnderlineWidth(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;F)V
.end method

.method public static final native NLEStyText_setUseFlowerDefaultColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;Z)V
.end method

.method public static final native NLEStyText_setUseFlowerDefaultColorVector(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;JLcom/bytedance/ies/nle/editor_jni/VecFloat;)V
.end method

.method public static final native NLEStyText_toEffectJsonString(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Ljava/lang/String;
.end method

.method public static final native NLETextTemplateClip_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLETextTemplateClip_clone(JLcom/bytedance/ies/nle/editor_jni/NLETextTemplateClip;)J
.end method

.method public static final native NLETextTemplateClip_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLETextTemplateClip_getContent(JLcom/bytedance/ies/nle/editor_jni/NLETextTemplateClip;)Ljava/lang/String;
.end method

.method public static final native NLETextTemplateClip_getIndex(JLcom/bytedance/ies/nle/editor_jni/NLETextTemplateClip;)I
.end method

.method public static final native NLETextTemplateClip_hasContent(JLcom/bytedance/ies/nle/editor_jni/NLETextTemplateClip;)Z
.end method

.method public static final native NLETextTemplateClip_hasIndex(JLcom/bytedance/ies/nle/editor_jni/NLETextTemplateClip;)Z
.end method

.method public static final native NLETextTemplateClip_setContent(JLcom/bytedance/ies/nle/editor_jni/NLETextTemplateClip;Ljava/lang/String;)V
.end method

.method public static final native NLETextTemplateClip_setIndex(JLcom/bytedance/ies/nle/editor_jni/NLETextTemplateClip;I)V
.end method

.method public static final native NLETimeEffect_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLETimeEffect_clone(JLcom/bytedance/ies/nle/editor_jni/NLETimeEffect;)J
.end method

.method public static final native NLETimeEffect_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLETimeEffect_getSegment(JLcom/bytedance/ies/nle/editor_jni/NLETimeEffect;)J
.end method

.method public static final native NLETimeEffect_setSegment(JLcom/bytedance/ies/nle/editor_jni/NLETimeEffect;JLcom/bytedance/ies/nle/editor_jni/NLESegmentTimeEffect;)V
.end method

.method public static final native NLETimeMax_get()J
.end method

.method public static final native NLETimeSpaceNode_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLETimeSpaceNode_clone(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)J
.end method

.method public static final native NLETimeSpaceNode_collectProcessNodes(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;JLcom/bytedance/ies/nle/editor_jni/VecNLETimeSpaceNodeSPtr;)V
.end method

.method public static final native NLETimeSpaceNode_copyValueNotMappedToStage(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)V
.end method

.method public static final native NLETimeSpaceNode_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLETimeSpaceNode_getAbsSpeed(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)F
.end method

.method public static final native NLETimeSpaceNode_getDuration(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)J
.end method

.method public static final native NLETimeSpaceNode_getEndTime(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)J
.end method

.method public static final native NLETimeSpaceNode_getLayer(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)I
.end method

.method public static final native NLETimeSpaceNode_getMeasuredEndTime(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)J
.end method

.method public static final native NLETimeSpaceNode_getMeasuredStartTime(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)J
.end method

.method public static final native NLETimeSpaceNode_getMirror_X(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)Z
.end method

.method public static final native NLETimeSpaceNode_getMirror_Y(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)Z
.end method

.method public static final native NLETimeSpaceNode_getProcessor(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)J
.end method

.method public static final native NLETimeSpaceNode_getRelativeHeight(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)F
.end method

.method public static final native NLETimeSpaceNode_getRelativeWidth(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)F
.end method

.method public static final native NLETimeSpaceNode_getRewind(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)Z
.end method

.method public static final native NLETimeSpaceNode_getRotation(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)F
.end method

.method public static final native NLETimeSpaceNode_getScale(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)F
.end method

.method public static final native NLETimeSpaceNode_getSpeed(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)F
.end method

.method public static final native NLETimeSpaceNode_getStartTime(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)J
.end method

.method public static final native NLETimeSpaceNode_getTransformX(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)F
.end method

.method public static final native NLETimeSpaceNode_getTransformY(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)F
.end method

.method public static final native NLETimeSpaceNode_getTransformZ(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)I
.end method

.method public static final native NLETimeSpaceNode_hasEndTime(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)Z
.end method

.method public static final native NLETimeSpaceNode_hasMirror_X(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)Z
.end method

.method public static final native NLETimeSpaceNode_hasMirror_Y(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)Z
.end method

.method public static final native NLETimeSpaceNode_hasProcessor(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)Z
.end method

.method public static final native NLETimeSpaceNode_hasRelativeHeight(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)Z
.end method

.method public static final native NLETimeSpaceNode_hasRelativeWidth(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)Z
.end method

.method public static final native NLETimeSpaceNode_hasRotation(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)Z
.end method

.method public static final native NLETimeSpaceNode_hasScale(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)Z
.end method

.method public static final native NLETimeSpaceNode_hasSpeed(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)Z
.end method

.method public static final native NLETimeSpaceNode_hasStartTime(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)Z
.end method

.method public static final native NLETimeSpaceNode_hasTransformX(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)Z
.end method

.method public static final native NLETimeSpaceNode_hasTransformY(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)Z
.end method

.method public static final native NLETimeSpaceNode_hasTransformZ(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)Z
.end method

.method public static final native NLETimeSpaceNode_setAbsSpeed(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;F)V
.end method

.method public static final native NLETimeSpaceNode_setDuration(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;J)V
.end method

.method public static final native NLETimeSpaceNode_setEndTime(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;J)V
.end method

.method public static final native NLETimeSpaceNode_setLayer(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;I)V
.end method

.method public static final native NLETimeSpaceNode_setMeasuredEndTime(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;J)V
.end method

.method public static final native NLETimeSpaceNode_setMeasuredStartTime(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;J)V
.end method

.method public static final native NLETimeSpaceNode_setMirror_X(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;Z)V
.end method

.method public static final native NLETimeSpaceNode_setMirror_Y(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;Z)V
.end method

.method public static final native NLETimeSpaceNode_setProcessor(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;JLcom/bytedance/ies/nle/editor_jni/VecString;)V
.end method

.method public static final native NLETimeSpaceNode_setRelativeHeight(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;F)V
.end method

.method public static final native NLETimeSpaceNode_setRelativeWidth(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;F)V
.end method

.method public static final native NLETimeSpaceNode_setRewind(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;Z)V
.end method

.method public static final native NLETimeSpaceNode_setRotation(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;F)V
.end method

.method public static final native NLETimeSpaceNode_setScale(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;F)V
.end method

.method public static final native NLETimeSpaceNode_setSpeed(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;F)V
.end method

.method public static final native NLETimeSpaceNode_setStartTime(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;J)V
.end method

.method public static final native NLETimeSpaceNode_setTransformX(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;F)V
.end method

.method public static final native NLETimeSpaceNode_setTransformY(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;F)V
.end method

.method public static final native NLETimeSpaceNode_setTransformZ(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;I)V
.end method

.method public static final native NLETrackAlgorithm_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLETrackAlgorithm_clone(JLcom/bytedance/ies/nle/editor_jni/NLETrackAlgorithm;)J
.end method

.method public static final native NLETrackAlgorithm_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLETrackAlgorithm_getVideoRatio(JLcom/bytedance/ies/nle/editor_jni/NLETrackAlgorithm;)F
.end method

.method public static final native NLETrackAlgorithm_hasVideoRatio(JLcom/bytedance/ies/nle/editor_jni/NLETrackAlgorithm;)Z
.end method

.method public static final native NLETrackAlgorithm_setVideoRatio(JLcom/bytedance/ies/nle/editor_jni/NLETrackAlgorithm;F)V
.end method

.method public static final native NLETrackMV_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLETrackMV_addMask(JLcom/bytedance/ies/nle/editor_jni/NLETrackMV;JLcom/bytedance/ies/nle/editor_jni/NLEMVExternalAlgorithmResult;)V
.end method

.method public static final native NLETrackMV_clearMask(JLcom/bytedance/ies/nle/editor_jni/NLETrackMV;)V
.end method

.method public static final native NLETrackMV_clone(JLcom/bytedance/ies/nle/editor_jni/NLETrackMV;)J
.end method

.method public static final native NLETrackMV_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLETrackMV_getAlgorithm(JLcom/bytedance/ies/nle/editor_jni/NLETrackMV;)J
.end method

.method public static final native NLETrackMV_getAlgorithmConnectedAudioSlotName(JLcom/bytedance/ies/nle/editor_jni/NLETrackMV;)Ljava/lang/String;
.end method

.method public static final native NLETrackMV_getCustomHeight(JLcom/bytedance/ies/nle/editor_jni/NLETrackMV;)I
.end method

.method public static final native NLETrackMV_getCustomWidth(JLcom/bytedance/ies/nle/editor_jni/NLETrackMV;)I
.end method

.method public static final native NLETrackMV_getExtraParams(JLcom/bytedance/ies/nle/editor_jni/NLETrackMV;)Ljava/lang/String;
.end method

.method public static final native NLETrackMV_getMV(JLcom/bytedance/ies/nle/editor_jni/NLETrackMV;)J
.end method

.method public static final native NLETrackMV_getMVResolution(JLcom/bytedance/ies/nle/editor_jni/NLETrackMV;)I
.end method

.method public static final native NLETrackMV_getMasks(JLcom/bytedance/ies/nle/editor_jni/NLETrackMV;)J
.end method

.method public static final native NLETrackMV_getSingleVideo(JLcom/bytedance/ies/nle/editor_jni/NLETrackMV;)Z
.end method

.method public static final native NLETrackMV_hasAlgorithmConnectedAudioSlotName(JLcom/bytedance/ies/nle/editor_jni/NLETrackMV;)Z
.end method

.method public static final native NLETrackMV_hasCustomHeight(JLcom/bytedance/ies/nle/editor_jni/NLETrackMV;)Z
.end method

.method public static final native NLETrackMV_hasCustomWidth(JLcom/bytedance/ies/nle/editor_jni/NLETrackMV;)Z
.end method

.method public static final native NLETrackMV_hasExtraParams(JLcom/bytedance/ies/nle/editor_jni/NLETrackMV;)Z
.end method

.method public static final native NLETrackMV_hasMVResolution(JLcom/bytedance/ies/nle/editor_jni/NLETrackMV;)Z
.end method

.method public static final native NLETrackMV_hasSingleVideo(JLcom/bytedance/ies/nle/editor_jni/NLETrackMV;)Z
.end method

.method public static final native NLETrackMV_removeMask(JLcom/bytedance/ies/nle/editor_jni/NLETrackMV;JLcom/bytedance/ies/nle/editor_jni/NLEMVExternalAlgorithmResult;)Z
.end method

.method public static final native NLETrackMV_setAlgorithm(JLcom/bytedance/ies/nle/editor_jni/NLETrackMV;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
.end method

.method public static final native NLETrackMV_setAlgorithmConnectedAudioSlotName(JLcom/bytedance/ies/nle/editor_jni/NLETrackMV;Ljava/lang/String;)V
.end method

.method public static final native NLETrackMV_setCustomHeight(JLcom/bytedance/ies/nle/editor_jni/NLETrackMV;I)V
.end method

.method public static final native NLETrackMV_setCustomWidth(JLcom/bytedance/ies/nle/editor_jni/NLETrackMV;I)V
.end method

.method public static final native NLETrackMV_setExtraParams(JLcom/bytedance/ies/nle/editor_jni/NLETrackMV;Ljava/lang/String;)V
.end method

.method public static final native NLETrackMV_setMV(JLcom/bytedance/ies/nle/editor_jni/NLETrackMV;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
.end method

.method public static final native NLETrackMV_setMVResolution(JLcom/bytedance/ies/nle/editor_jni/NLETrackMV;I)V
.end method

.method public static final native NLETrackMV_setSingleVideo(JLcom/bytedance/ies/nle/editor_jni/NLETrackMV;Z)V
.end method

.method public static final native NLETrackSlot_KEYFRAME_TIMERANGE_KEY_get()Ljava/lang/String;
.end method

.method public static final native NLETrackSlot_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLETrackSlot_addChromaChannel(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLEChromaChannel;)V
.end method

.method public static final native NLETrackSlot_addFilter(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLEFilter;)V
.end method

.method public static final native NLETrackSlot_addKeyframe(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V
.end method

.method public static final native NLETrackSlot_addKeyframeValue(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphValue;)V
.end method

.method public static final native NLETrackSlot_addMask(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLEMask;)V
.end method

.method public static final native NLETrackSlot_addNoiceReduction(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLENoiseReduction;)V
.end method

.method public static final native NLETrackSlot_addOrUpdateKeyframe(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JJZ)Ljava/lang/String;
.end method

.method public static final native NLETrackSlot_addVideoAnim(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLEVideoAnimation;)V
.end method

.method public static final native NLETrackSlot_addVideoEffect(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLEVideoEffect;)V
.end method

.method public static final native NLETrackSlot_adjustKeyFrame__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;J)V
.end method

.method public static final native NLETrackSlot_adjustKeyFrame__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V
.end method

.method public static final native NLETrackSlot_canKeyFrameAddedForTextSticker(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)Z
.end method

.method public static final native NLETrackSlot_clearChromaChannel(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V
.end method

.method public static final native NLETrackSlot_clearFilter(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V
.end method

.method public static final native NLETrackSlot_clearKeyframe(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V
.end method

.method public static final native NLETrackSlot_clearKeyframeValue(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V
.end method

.method public static final native NLETrackSlot_clearMask(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V
.end method

.method public static final native NLETrackSlot_clearNoiceReduction(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V
.end method

.method public static final native NLETrackSlot_clearVideoAnim(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V
.end method

.method public static final native NLETrackSlot_clearVideoEffect(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V
.end method

.method public static final native NLETrackSlot_clone(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J
.end method

.method public static final native NLETrackSlot_createKeyframe(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J
.end method

.method public static final native NLETrackSlot_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLETrackSlot_findKeyframe(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JJ)J
.end method

.method public static final native NLETrackSlot_getAIMatting(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J
.end method

.method public static final native NLETrackSlot_getAudioFilter(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J
.end method

.method public static final native NLETrackSlot_getAutoFillFrame(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J
.end method

.method public static final native NLETrackSlot_getChromaChannels(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J
.end method

.method public static final native NLETrackSlot_getEndTransition(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J
.end method

.method public static final native NLETrackSlot_getFilterByName(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Ljava/lang/String;)J
.end method

.method public static final native NLETrackSlot_getFilters(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J
.end method

.method public static final native NLETrackSlot_getKeyframeGraphType(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)I
.end method

.method public static final native NLETrackSlot_getKeyframeValues(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J
.end method

.method public static final native NLETrackSlot_getKeyframes(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J
.end method

.method public static final native NLETrackSlot_getKeyframesUUIDList(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J
.end method

.method public static final native NLETrackSlot_getMainSegment(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J
.end method

.method public static final native NLETrackSlot_getMasks(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J
.end method

.method public static final native NLETrackSlot_getNoiceReductions(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J
.end method

.method public static final native NLETrackSlot_getPinAlgorithmFile(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J
.end method

.method public static final native NLETrackSlot_getSortKeyframe(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J
.end method

.method public static final native NLETrackSlot_getVideoAnims(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J
.end method

.method public static final native NLETrackSlot_getVideoEffects(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J
.end method

.method public static final native NLETrackSlot_hasKeyframeGraphType(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)Z
.end method

.method public static final native NLETrackSlot_hasKeyframesUUIDList(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)Z
.end method

.method public static final native NLETrackSlot_keyframeAtTime(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JJ)J
.end method

.method public static final native NLETrackSlot_removeChromaChannel(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLEChromaChannel;)Z
.end method

.method public static final native NLETrackSlot_removeFilter(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLEFilter;)Z
.end method

.method public static final native NLETrackSlot_removeFilterByName(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Ljava/lang/String;)J
.end method

.method public static final native NLETrackSlot_removeKeyframeValue(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphValue;)Z
.end method

.method public static final native NLETrackSlot_removeKeyframe__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)Z
.end method

.method public static final native NLETrackSlot_removeKeyframe__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JJ)Z
.end method

.method public static final native NLETrackSlot_removeMask(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLEMask;)Z
.end method

.method public static final native NLETrackSlot_removeNoiceReduction(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLENoiseReduction;)Z
.end method

.method public static final native NLETrackSlot_removeVideoAnim(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLEVideoAnimation;)Z
.end method

.method public static final native NLETrackSlot_removeVideoEffect(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLEVideoEffect;)Z
.end method

.method public static final native NLETrackSlot_setAIMatting(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLEAIMatting;)V
.end method

.method public static final native NLETrackSlot_setAudioFilter(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLEFilter;)V
.end method

.method public static final native NLETrackSlot_setAutoFillFrame(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLEAutoFillFrame;)V
.end method

.method public static final native NLETrackSlot_setEndTransition(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;)V
.end method

.method public static final native NLETrackSlot_setKeyframeGraphType(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;I)V
.end method

.method public static final native NLETrackSlot_setKeyframesUUIDList(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/VecString;)V
.end method

.method public static final native NLETrackSlot_setMainSegment(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLESegment;)V
.end method

.method public static final native NLETrackSlot_setPinAlgorithmFile(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
.end method

.method public static final native NLETrackSlot_syncEffectResource(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J
.end method

.method public static final native NLETrackSlot_updateKeyframe(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J
.end method

.method public static final native NLETrackTypeToString(I)Ljava/lang/String;
.end method

.method public static final native NLETrack_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLETrack_addFilter(JLcom/bytedance/ies/nle/editor_jni/NLETrack;JLcom/bytedance/ies/nle/editor_jni/NLEFilter;)V
.end method

.method public static final native NLETrack_addKeyframeSlot(JLcom/bytedance/ies/nle/editor_jni/NLETrack;JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V
.end method

.method public static final native NLETrack_addSlot(JLcom/bytedance/ies/nle/editor_jni/NLETrack;JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V
.end method

.method public static final native NLETrack_addSlotAfterSlot(JLcom/bytedance/ies/nle/editor_jni/NLETrack;JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V
.end method

.method public static final native NLETrack_addSlotAtEnd(JLcom/bytedance/ies/nle/editor_jni/NLETrack;JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V
.end method

.method public static final native NLETrack_addSlotAtIndex__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/NLETrack;JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;I)V
.end method

.method public static final native NLETrack_addSlotAtIndex__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/NLETrack;JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;IZ)V
.end method

.method public static final native NLETrack_addSlotAtStart(JLcom/bytedance/ies/nle/editor_jni/NLETrack;JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V
.end method

.method public static final native NLETrack_addVideoEffect(JLcom/bytedance/ies/nle/editor_jni/NLETrack;JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V
.end method

.method public static final native NLETrack_clearFilter(JLcom/bytedance/ies/nle/editor_jni/NLETrack;)V
.end method

.method public static final native NLETrack_clearKeyframeSlot(JLcom/bytedance/ies/nle/editor_jni/NLETrack;)V
.end method

.method public static final native NLETrack_clearSlot(JLcom/bytedance/ies/nle/editor_jni/NLETrack;)V
.end method

.method public static final native NLETrack_clearVideoEffect(JLcom/bytedance/ies/nle/editor_jni/NLETrack;)V
.end method

.method public static final native NLETrack_clone(JLcom/bytedance/ies/nle/editor_jni/NLETrack;)J
.end method

.method public static final native NLETrack_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLETrack_getCherEffect(JLcom/bytedance/ies/nle/editor_jni/NLETrack;)J
.end method

.method public static final native NLETrack_getEffectScale(JLcom/bytedance/ies/nle/editor_jni/NLETrack;FF)F
.end method

.method public static final native NLETrack_getExtraTrackType(JLcom/bytedance/ies/nle/editor_jni/NLETrack;)I
.end method

.method public static final native NLETrack_getFilterByName(JLcom/bytedance/ies/nle/editor_jni/NLETrack;Ljava/lang/String;)J
.end method

.method public static final native NLETrack_getFilters(JLcom/bytedance/ies/nle/editor_jni/NLETrack;)J
.end method

.method public static final native NLETrack_getKeyframeSlots(JLcom/bytedance/ies/nle/editor_jni/NLETrack;)J
.end method

.method public static final native NLETrack_getMainTrack(JLcom/bytedance/ies/nle/editor_jni/NLETrack;)Z
.end method

.method public static final native NLETrack_getMaxEnd(JLcom/bytedance/ies/nle/editor_jni/NLETrack;)J
.end method

.method public static final native NLETrack_getMaxEndExcludeDisabledNode(JLcom/bytedance/ies/nle/editor_jni/NLETrack;Z)J
.end method

.method public static final native NLETrack_getMeasuredEndTime(JLcom/bytedance/ies/nle/editor_jni/NLETrack;)J
.end method

.method public static final native NLETrack_getMinStart(JLcom/bytedance/ies/nle/editor_jni/NLETrack;)J
.end method

.method public static final native NLETrack_getOriginalCanvasRatio(JLcom/bytedance/ies/nle/editor_jni/NLETrack;F)F
.end method

.method public static final native NLETrack_getResourceType(JLcom/bytedance/ies/nle/editor_jni/NLETrack;)I
.end method

.method public static final native NLETrack_getSlotByIndex(JLcom/bytedance/ies/nle/editor_jni/NLETrack;I)J
.end method

.method public static final native NLETrack_getSlotByTime(JLcom/bytedance/ies/nle/editor_jni/NLETrack;J)J
.end method

.method public static final native NLETrack_getSlotIndex(JLcom/bytedance/ies/nle/editor_jni/NLETrack;JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)I
.end method

.method public static final native NLETrack_getSlots(JLcom/bytedance/ies/nle/editor_jni/NLETrack;)J
.end method

.method public static final native NLETrack_getSortedSlots(JLcom/bytedance/ies/nle/editor_jni/NLETrack;)J
.end method

.method public static final native NLETrack_getTimeEffect(JLcom/bytedance/ies/nle/editor_jni/NLETrack;)J
.end method

.method public static final native NLETrack_getTrackType(JLcom/bytedance/ies/nle/editor_jni/NLETrack;)I
.end method

.method public static final native NLETrack_getVideoEffects(JLcom/bytedance/ies/nle/editor_jni/NLETrack;)J
.end method

.method public static final native NLETrack_getVideoScaleAfterFixCenter(JLcom/bytedance/ies/nle/editor_jni/NLETrack;FF)F
.end method

.method public static final native NLETrack_getVolume(JLcom/bytedance/ies/nle/editor_jni/NLETrack;)F
.end method

.method public static final native NLETrack_hasMainTrack(JLcom/bytedance/ies/nle/editor_jni/NLETrack;)Z
.end method

.method public static final native NLETrack_hasVolume(JLcom/bytedance/ies/nle/editor_jni/NLETrack;)Z
.end method

.method public static final native NLETrack_isAudioEnable(JLcom/bytedance/ies/nle/editor_jni/NLETrack;)Z
.end method

.method public static final native NLETrack_isTimelineChange(JLcom/bytedance/ies/nle/editor_jni/NLETrack;JLcom/bytedance/ies/nle/editor_jni/NLETrack;)Z
.end method

.method public static final native NLETrack_moveSlotToIndex__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/NLETrack;JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;I)Z
.end method

.method public static final native NLETrack_moveSlotToIndex__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/NLETrack;II)Z
.end method

.method public static final native NLETrack_removeFilter(JLcom/bytedance/ies/nle/editor_jni/NLETrack;JLcom/bytedance/ies/nle/editor_jni/NLEFilter;)Z
.end method

.method public static final native NLETrack_removeFilterByName(JLcom/bytedance/ies/nle/editor_jni/NLETrack;Ljava/lang/String;)J
.end method

.method public static final native NLETrack_removeKeyframeSlot(JLcom/bytedance/ies/nle/editor_jni/NLETrack;JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)Z
.end method

.method public static final native NLETrack_removeSlot(JLcom/bytedance/ies/nle/editor_jni/NLETrack;JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)Z
.end method

.method public static final native NLETrack_removeVideoEffect(JLcom/bytedance/ies/nle/editor_jni/NLETrack;JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)Z
.end method

.method public static final native NLETrack_setAudioEnable(JLcom/bytedance/ies/nle/editor_jni/NLETrack;Z)V
.end method

.method public static final native NLETrack_setCherEffect(JLcom/bytedance/ies/nle/editor_jni/NLETrack;JLcom/bytedance/ies/nle/editor_jni/NLECherEffect;)V
.end method

.method public static final native NLETrack_setExtraTrackType(JLcom/bytedance/ies/nle/editor_jni/NLETrack;I)V
.end method

.method public static final native NLETrack_setMainTrack(JLcom/bytedance/ies/nle/editor_jni/NLETrack;Z)V
.end method

.method public static final native NLETrack_setTimeEffect(JLcom/bytedance/ies/nle/editor_jni/NLETrack;JLcom/bytedance/ies/nle/editor_jni/NLETimeEffect;)V
.end method

.method public static final native NLETrack_setVolume(JLcom/bytedance/ies/nle/editor_jni/NLETrack;F)V
.end method

.method public static final native NLETrack_split(JLcom/bytedance/ies/nle/editor_jni/NLETrack;J)J
.end method

.method public static final native NLETrack_splitGetBackSlotPair(JLcom/bytedance/ies/nle/editor_jni/NLETrack;J)J
.end method

.method public static final native NLETrack_splitInSpecificSlot(JLcom/bytedance/ies/nle/editor_jni/NLETrack;JJLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J
.end method

.method public static final native NLETrack_splitSegCurvePointInSlot(JLcom/bytedance/ies/nle/editor_jni/NLETrack;JJLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J
.end method

.method public static final native NLETrack_splitSeqCurvePointInSlot(JLcom/bytedance/ies/nle/editor_jni/NLETrack;JJLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J
.end method

.method public static final native NLETrack_timeSort(JLcom/bytedance/ies/nle/editor_jni/NLETrack;)V
.end method

.method public static final native NLETrack_updateRelativeSizeWhileGlobalCanvasChanged(JLcom/bytedance/ies/nle/editor_jni/NLETrack;FF)V
.end method

.method public static final native NLEUrlResourceProtocol_EXTRA_PARAM_MD5()Ljava/lang/String;
.end method

.method public static final native NLEUrlResourceProtocol_EXTRA_PARAM_SAVE_PATH()Ljava/lang/String;
.end method

.method public static final native NLEUrlResourceProtocol_KEY_URL()Ljava/lang/String;
.end method

.method public static final native NLEUrlResourceProtocol_PLATFORM_STRING()Ljava/lang/String;
.end method

.method public static final native NLEUrlResourceProtocol_SWIGUpcast(J)J
.end method

.method public static final native NLEUrlResourceProtocol_getParameters(JLcom/bytedance/ies/nle/editor_jni/NLEUrlResourceProtocol;)J
.end method

.method public static final native NLEUrlResourceProtocol_getSourceFrom(JLcom/bytedance/ies/nle/editor_jni/NLEUrlResourceProtocol;)Ljava/lang/String;
.end method

.method public static final native NLEUrlResourceProtocol_isUrlResource(Ljava/lang/String;)Z
.end method

.method public static final native NLEVideoAnimation_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLEVideoAnimation_clone(JLcom/bytedance/ies/nle/editor_jni/NLEVideoAnimation;)J
.end method

.method public static final native NLEVideoAnimation_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLEVideoAnimation_getSegment(JLcom/bytedance/ies/nle/editor_jni/NLEVideoAnimation;)J
.end method

.method public static final native NLEVideoAnimation_setSegment(JLcom/bytedance/ies/nle/editor_jni/NLEVideoAnimation;JLcom/bytedance/ies/nle/editor_jni/NLESegmentVideoAnimation;)V
.end method

.method public static final native NLEVideoEffect_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLEVideoEffect_clone(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEffect;)J
.end method

.method public static final native NLEVideoEffect_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLEVideoEffect_getSegment(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEffect;)J
.end method

.method public static final native NLEVideoEffect_setSegment(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEffect;JLcom/bytedance/ies/nle/editor_jni/NLESegmentEffect;)V
.end method

.method public static final native NLEVideoFrameModel_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLEVideoFrameModel_addTrack(JLcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;JLcom/bytedance/ies/nle/editor_jni/NLETrack;)V
.end method

.method public static final native NLEVideoFrameModel_clearTrack(JLcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;)V
.end method

.method public static final native NLEVideoFrameModel_clone(JLcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;)J
.end method

.method public static final native NLEVideoFrameModel_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLEVideoFrameModel_getCanvasRatio(JLcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;)F
.end method

.method public static final native NLEVideoFrameModel_getCoverMaterial(JLcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;)J
.end method

.method public static final native NLEVideoFrameModel_getSnapshot(JLcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;)J
.end method

.method public static final native NLEVideoFrameModel_getTracks(JLcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;)J
.end method

.method public static final native NLEVideoFrameModel_getVideoFrameTime(JLcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;)J
.end method

.method public static final native NLEVideoFrameModel_hasCanvasRatio(JLcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;)Z
.end method

.method public static final native NLEVideoFrameModel_hasVideoFrameTime(JLcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;)Z
.end method

.method public static final native NLEVideoFrameModel_removeTrack(JLcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;JLcom/bytedance/ies/nle/editor_jni/NLETrack;)Z
.end method

.method public static final native NLEVideoFrameModel_setCanvasRatio(JLcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;F)V
.end method

.method public static final native NLEVideoFrameModel_setCoverMaterial(JLcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;)V
.end method

.method public static final native NLEVideoFrameModel_setSnapshot(JLcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
.end method

.method public static final native NLEVideoFrameModel_setVideoFrameTime(JLcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;J)V
.end method

.method public static final native PairIntInt_first_get(JLcom/bytedance/ies/nle/editor_jni/PairIntInt;)I
.end method

.method public static final native PairIntInt_first_set(JLcom/bytedance/ies/nle/editor_jni/PairIntInt;I)V
.end method

.method public static final native PairIntInt_second_get(JLcom/bytedance/ies/nle/editor_jni/PairIntInt;)I
.end method

.method public static final native PairIntInt_second_set(JLcom/bytedance/ies/nle/editor_jni/PairIntInt;I)V
.end method

.method public static final native PairNLEPoint2NLEPoint_first_get(JLcom/bytedance/ies/nle/editor_jni/PairNLEPoint2NLEPoint;)J
.end method

.method public static final native PairNLEPoint2NLEPoint_first_set(JLcom/bytedance/ies/nle/editor_jni/PairNLEPoint2NLEPoint;JLcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;)V
.end method

.method public static final native PairNLEPoint2NLEPoint_second_get(JLcom/bytedance/ies/nle/editor_jni/PairNLEPoint2NLEPoint;)J
.end method

.method public static final native PairNLEPoint2NLEPoint_second_set(JLcom/bytedance/ies/nle/editor_jni/PairNLEPoint2NLEPoint;JLcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;)V
.end method

.method public static final native PairSlotSlot_first_get(JLcom/bytedance/ies/nle/editor_jni/PairSlotSlot;)J
.end method

.method public static final native PairSlotSlot_first_set(JLcom/bytedance/ies/nle/editor_jni/PairSlotSlot;JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V
.end method

.method public static final native PairSlotSlot_second_get(JLcom/bytedance/ies/nle/editor_jni/PairSlotSlot;)J
.end method

.method public static final native PairSlotSlot_second_set(JLcom/bytedance/ies/nle/editor_jni/PairSlotSlot;JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V
.end method

.method public static final native PairUIntUInt_first_get(JLcom/bytedance/ies/nle/editor_jni/PairUIntUInt;)J
.end method

.method public static final native PairUIntUInt_first_set(JLcom/bytedance/ies/nle/editor_jni/PairUIntUInt;J)V
.end method

.method public static final native PairUIntUInt_second_get(JLcom/bytedance/ies/nle/editor_jni/PairUIntUInt;)J
.end method

.method public static final native PairUIntUInt_second_set(JLcom/bytedance/ies/nle/editor_jni/PairUIntUInt;J)V
.end method

.method public static SwigDirector_INLEMonitor_onEvent(Lcom/bytedance/ies/nle/editor_jni/INLEMonitor;Ljava/lang/String;ILjava/lang/String;J)V
    .registers 6

    .line 2573
    invoke-virtual/range {p0 .. p5}, Lcom/bytedance/ies/nle/editor_jni/INLEMonitor;->onEvent(Ljava/lang/String;ILjava/lang/String;J)V

    return-void
.end method

.method public static SwigDirector_NLEBranchListener_onChanged(Lcom/bytedance/ies/nle/editor_jni/NLEBranchListener;)V
    .registers 1

    .line 2579
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEBranchListener;->onChanged()V

    return-void
.end method

.method public static SwigDirector_NLEChangeListener_onChanged(Lcom/bytedance/ies/nle/editor_jni/NLEChangeListener;)V
    .registers 1

    .line 2564
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEChangeListener;->onChanged()V

    return-void
.end method

.method public static SwigDirector_NLEEditorListener_onChanged(Lcom/bytedance/ies/nle/editor_jni/NLEEditorListener;)V
    .registers 1

    .line 2576
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorListener;->onChanged()V

    return-void
.end method

.method public static SwigDirector_NLELoggerListener_onLog__SWIG_0(Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;ILjava/lang/String;J)V
    .registers 7

    .line 2567
    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/LogLevel;->swigToEnum(I)Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    move-result-object p1

    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/SWIGTYPE_p_va_list;

    const/4 v1, 0x1

    invoke-direct {v0, p3, p4, v1}, Lcom/bytedance/ies/nle/editor_jni/SWIGTYPE_p_va_list;-><init>(JZ)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->onLog(Lcom/bytedance/ies/nle/editor_jni/LogLevel;Ljava/lang/String;Lcom/bytedance/ies/nle/editor_jni/SWIGTYPE_p_va_list;)V

    return-void
.end method

.method public static SwigDirector_NLELoggerListener_onLog__SWIG_1(Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;ILjava/lang/String;)V
    .registers 3

    .line 2570
    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/LogLevel;->swigToEnum(I)Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->onLog(Lcom/bytedance/ies/nle/editor_jni/LogLevel;Ljava/lang/String;)V

    return-void
.end method

.method public static SwigDirector_NLEResourceFetchCallback_onError(Lcom/bytedance/ies/nle/editor_jni/NLEResourceFetchCallback;I)V
    .registers 2

    .line 2585
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceFetchCallback;->onError(I)V

    return-void
.end method

.method public static SwigDirector_NLEResourceFetchCallback_onProgress(Lcom/bytedance/ies/nle/editor_jni/NLEResourceFetchCallback;I)V
    .registers 2

    .line 2588
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceFetchCallback;->onProgress(I)V

    return-void
.end method

.method public static SwigDirector_NLEResourceFetchCallback_onSuccess(Lcom/bytedance/ies/nle/editor_jni/NLEResourceFetchCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 2582
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceFetchCallback;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static SwigDirector_NLEResourceSynchronizer_fetch(Lcom/bytedance/ies/nle/editor_jni/NLEResourceSynchronizer;Ljava/lang/String;J)I
    .registers 6

    .line 2591
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/SWIGTYPE_p_std__shared_ptrT_nle__resource__NLEResourceFetchCallback_t;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Lcom/bytedance/ies/nle/editor_jni/SWIGTYPE_p_std__shared_ptrT_nle__resource__NLEResourceFetchCallback_t;-><init>(JZ)V

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceSynchronizer;->fetch(Ljava/lang/String;Lcom/bytedance/ies/nle/editor_jni/SWIGTYPE_p_std__shared_ptrT_nle__resource__NLEResourceFetchCallback_t;)I

    move-result p0

    return p0
.end method

.method public static SwigDirector_NLEResourceSynchronizer_push(Lcom/bytedance/ies/nle/editor_jni/NLEResourceSynchronizer;Ljava/lang/String;J)I
    .registers 6

    .line 2594
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/SWIGTYPE_p_std__shared_ptrT_nle__resource__NLEResourceFetchCallback_t;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Lcom/bytedance/ies/nle/editor_jni/SWIGTYPE_p_std__shared_ptrT_nle__resource__NLEResourceFetchCallback_t;-><init>(JZ)V

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceSynchronizer;->push(Ljava/lang/String;Lcom/bytedance/ies/nle/editor_jni/SWIGTYPE_p_std__shared_ptrT_nle__resource__NLEResourceFetchCallback_t;)I

    move-result p0

    return p0
.end method

.method public static final native UnorderedMapStrStr_Iterator_getKey(JLcom/bytedance/ies/nle/editor_jni/UnorderedMapStrStr$Iterator;)Ljava/lang/String;
.end method

.method public static final native UnorderedMapStrStr_Iterator_getNextUnchecked(JLcom/bytedance/ies/nle/editor_jni/UnorderedMapStrStr$Iterator;)J
.end method

.method public static final native UnorderedMapStrStr_Iterator_getValue(JLcom/bytedance/ies/nle/editor_jni/UnorderedMapStrStr$Iterator;)Ljava/lang/String;
.end method

.method public static final native UnorderedMapStrStr_Iterator_isNot(JLcom/bytedance/ies/nle/editor_jni/UnorderedMapStrStr$Iterator;JLcom/bytedance/ies/nle/editor_jni/UnorderedMapStrStr$Iterator;)Z
.end method

.method public static final native UnorderedMapStrStr_Iterator_setValue(JLcom/bytedance/ies/nle/editor_jni/UnorderedMapStrStr$Iterator;Ljava/lang/String;)V
.end method

.method public static final native UnorderedMapStrStr_begin(JLcom/bytedance/ies/nle/editor_jni/UnorderedMapStrStr;)J
.end method

.method public static final native UnorderedMapStrStr_clear(JLcom/bytedance/ies/nle/editor_jni/UnorderedMapStrStr;)V
.end method

.method public static final native UnorderedMapStrStr_containsImpl(JLcom/bytedance/ies/nle/editor_jni/UnorderedMapStrStr;Ljava/lang/String;)Z
.end method

.method public static final native UnorderedMapStrStr_end(JLcom/bytedance/ies/nle/editor_jni/UnorderedMapStrStr;)J
.end method

.method public static final native UnorderedMapStrStr_find(JLcom/bytedance/ies/nle/editor_jni/UnorderedMapStrStr;Ljava/lang/String;)J
.end method

.method public static final native UnorderedMapStrStr_isEmpty(JLcom/bytedance/ies/nle/editor_jni/UnorderedMapStrStr;)Z
.end method

.method public static final native UnorderedMapStrStr_putUnchecked(JLcom/bytedance/ies/nle/editor_jni/UnorderedMapStrStr;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static final native UnorderedMapStrStr_removeUnchecked(JLcom/bytedance/ies/nle/editor_jni/UnorderedMapStrStr;JLcom/bytedance/ies/nle/editor_jni/UnorderedMapStrStr$Iterator;)V
.end method

.method public static final native UnorderedMapStrStr_sizeImpl(JLcom/bytedance/ies/nle/editor_jni/UnorderedMapStrStr;)I
.end method

.method public static final native VecChar_capacity(JLcom/bytedance/ies/nle/editor_jni/VecChar;)J
.end method

.method public static final native VecChar_clear(JLcom/bytedance/ies/nle/editor_jni/VecChar;)V
.end method

.method public static final native VecChar_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecChar;C)V
.end method

.method public static final native VecChar_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecChar;IC)V
.end method

.method public static final native VecChar_doGet(JLcom/bytedance/ies/nle/editor_jni/VecChar;I)C
.end method

.method public static final native VecChar_doRemove(JLcom/bytedance/ies/nle/editor_jni/VecChar;I)C
.end method

.method public static final native VecChar_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VecChar;II)V
.end method

.method public static final native VecChar_doSet(JLcom/bytedance/ies/nle/editor_jni/VecChar;IC)C
.end method

.method public static final native VecChar_doSize(JLcom/bytedance/ies/nle/editor_jni/VecChar;)I
.end method

.method public static final native VecChar_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VecChar;)Z
.end method

.method public static final native VecChar_reserve(JLcom/bytedance/ies/nle/editor_jni/VecChar;J)V
.end method

.method public static final native VecDouble_capacity(JLcom/bytedance/ies/nle/editor_jni/VecDouble;)J
.end method

.method public static final native VecDouble_clear(JLcom/bytedance/ies/nle/editor_jni/VecDouble;)V
.end method

.method public static final native VecDouble_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecDouble;D)V
.end method

.method public static final native VecDouble_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecDouble;ID)V
.end method

.method public static final native VecDouble_doGet(JLcom/bytedance/ies/nle/editor_jni/VecDouble;I)D
.end method

.method public static final native VecDouble_doRemove(JLcom/bytedance/ies/nle/editor_jni/VecDouble;I)D
.end method

.method public static final native VecDouble_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VecDouble;II)V
.end method

.method public static final native VecDouble_doSet(JLcom/bytedance/ies/nle/editor_jni/VecDouble;ID)D
.end method

.method public static final native VecDouble_doSize(JLcom/bytedance/ies/nle/editor_jni/VecDouble;)I
.end method

.method public static final native VecDouble_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VecDouble;)Z
.end method

.method public static final native VecDouble_reserve(JLcom/bytedance/ies/nle/editor_jni/VecDouble;J)V
.end method

.method public static final native VecFloat_capacity(JLcom/bytedance/ies/nle/editor_jni/VecFloat;)J
.end method

.method public static final native VecFloat_clear(JLcom/bytedance/ies/nle/editor_jni/VecFloat;)V
.end method

.method public static final native VecFloat_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecFloat;F)V
.end method

.method public static final native VecFloat_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecFloat;IF)V
.end method

.method public static final native VecFloat_doGet(JLcom/bytedance/ies/nle/editor_jni/VecFloat;I)F
.end method

.method public static final native VecFloat_doRemove(JLcom/bytedance/ies/nle/editor_jni/VecFloat;I)F
.end method

.method public static final native VecFloat_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VecFloat;II)V
.end method

.method public static final native VecFloat_doSet(JLcom/bytedance/ies/nle/editor_jni/VecFloat;IF)F
.end method

.method public static final native VecFloat_doSize(JLcom/bytedance/ies/nle/editor_jni/VecFloat;)I
.end method

.method public static final native VecFloat_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VecFloat;)Z
.end method

.method public static final native VecFloat_reserve(JLcom/bytedance/ies/nle/editor_jni/VecFloat;J)V
.end method

.method public static final native VecInt_capacity(JLcom/bytedance/ies/nle/editor_jni/VecInt;)J
.end method

.method public static final native VecInt_clear(JLcom/bytedance/ies/nle/editor_jni/VecInt;)V
.end method

.method public static final native VecInt_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecInt;I)V
.end method

.method public static final native VecInt_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecInt;II)V
.end method

.method public static final native VecInt_doGet(JLcom/bytedance/ies/nle/editor_jni/VecInt;I)I
.end method

.method public static final native VecInt_doRemove(JLcom/bytedance/ies/nle/editor_jni/VecInt;I)I
.end method

.method public static final native VecInt_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VecInt;II)V
.end method

.method public static final native VecInt_doSet(JLcom/bytedance/ies/nle/editor_jni/VecInt;II)I
.end method

.method public static final native VecInt_doSize(JLcom/bytedance/ies/nle/editor_jni/VecInt;)I
.end method

.method public static final native VecInt_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VecInt;)Z
.end method

.method public static final native VecInt_reserve(JLcom/bytedance/ies/nle/editor_jni/VecInt;J)V
.end method

.method public static final native VecLongLong_capacity(JLcom/bytedance/ies/nle/editor_jni/VecLongLong;)J
.end method

.method public static final native VecLongLong_clear(JLcom/bytedance/ies/nle/editor_jni/VecLongLong;)V
.end method

.method public static final native VecLongLong_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecLongLong;J)V
.end method

.method public static final native VecLongLong_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecLongLong;IJ)V
.end method

.method public static final native VecLongLong_doGet(JLcom/bytedance/ies/nle/editor_jni/VecLongLong;I)J
.end method

.method public static final native VecLongLong_doRemove(JLcom/bytedance/ies/nle/editor_jni/VecLongLong;I)J
.end method

.method public static final native VecLongLong_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VecLongLong;II)V
.end method

.method public static final native VecLongLong_doSet(JLcom/bytedance/ies/nle/editor_jni/VecLongLong;IJ)J
.end method

.method public static final native VecLongLong_doSize(JLcom/bytedance/ies/nle/editor_jni/VecLongLong;)I
.end method

.method public static final native VecLongLong_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VecLongLong;)Z
.end method

.method public static final native VecLongLong_reserve(JLcom/bytedance/ies/nle/editor_jni/VecLongLong;J)V
.end method

.method public static final native VecNLECherEffectSPtrConst_capacity(JLcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtrConst;)J
.end method

.method public static final native VecNLECherEffectSPtrConst_clear(JLcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtrConst;)V
.end method

.method public static final native VecNLECherEffectSPtrConst_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtrConst;JLcom/bytedance/ies/nle/editor_jni/NLECherEffect;)V
.end method

.method public static final native VecNLECherEffectSPtrConst_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtrConst;IJLcom/bytedance/ies/nle/editor_jni/NLECherEffect;)V
.end method

.method public static final native VecNLECherEffectSPtrConst_doGet(JLcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtrConst;I)J
.end method

.method public static final native VecNLECherEffectSPtrConst_doRemove(JLcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtrConst;I)J
.end method

.method public static final native VecNLECherEffectSPtrConst_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtrConst;II)V
.end method

.method public static final native VecNLECherEffectSPtrConst_doSet(JLcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtrConst;IJLcom/bytedance/ies/nle/editor_jni/NLECherEffect;)J
.end method

.method public static final native VecNLECherEffectSPtrConst_doSize(JLcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtrConst;)I
.end method

.method public static final native VecNLECherEffectSPtrConst_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtrConst;)Z
.end method

.method public static final native VecNLECherEffectSPtrConst_reserve(JLcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtrConst;J)V
.end method

.method public static final native VecNLECherEffectSPtr_capacity(JLcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;)J
.end method

.method public static final native VecNLECherEffectSPtr_clear(JLcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;)V
.end method

.method public static final native VecNLECherEffectSPtr_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;JLcom/bytedance/ies/nle/editor_jni/NLECherEffect;)V
.end method

.method public static final native VecNLECherEffectSPtr_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;IJLcom/bytedance/ies/nle/editor_jni/NLECherEffect;)V
.end method

.method public static final native VecNLECherEffectSPtr_doGet(JLcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;I)J
.end method

.method public static final native VecNLECherEffectSPtr_doRemove(JLcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;I)J
.end method

.method public static final native VecNLECherEffectSPtr_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;II)V
.end method

.method public static final native VecNLECherEffectSPtr_doSet(JLcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;IJLcom/bytedance/ies/nle/editor_jni/NLECherEffect;)J
.end method

.method public static final native VecNLECherEffectSPtr_doSize(JLcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;)I
.end method

.method public static final native VecNLECherEffectSPtr_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;)Z
.end method

.method public static final native VecNLECherEffectSPtr_reserve(JLcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;J)V
.end method

.method public static final native VecNLEChromaChannelSPtrConst_capacity(JLcom/bytedance/ies/nle/editor_jni/VecNLEChromaChannelSPtrConst;)J
.end method

.method public static final native VecNLEChromaChannelSPtrConst_clear(JLcom/bytedance/ies/nle/editor_jni/VecNLEChromaChannelSPtrConst;)V
.end method

.method public static final native VecNLEChromaChannelSPtrConst_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecNLEChromaChannelSPtrConst;JLcom/bytedance/ies/nle/editor_jni/NLEChromaChannel;)V
.end method

.method public static final native VecNLEChromaChannelSPtrConst_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLEChromaChannelSPtrConst;IJLcom/bytedance/ies/nle/editor_jni/NLEChromaChannel;)V
.end method

.method public static final native VecNLEChromaChannelSPtrConst_doGet(JLcom/bytedance/ies/nle/editor_jni/VecNLEChromaChannelSPtrConst;I)J
.end method

.method public static final native VecNLEChromaChannelSPtrConst_doRemove(JLcom/bytedance/ies/nle/editor_jni/VecNLEChromaChannelSPtrConst;I)J
.end method

.method public static final native VecNLEChromaChannelSPtrConst_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VecNLEChromaChannelSPtrConst;II)V
.end method

.method public static final native VecNLEChromaChannelSPtrConst_doSet(JLcom/bytedance/ies/nle/editor_jni/VecNLEChromaChannelSPtrConst;IJLcom/bytedance/ies/nle/editor_jni/NLEChromaChannel;)J
.end method

.method public static final native VecNLEChromaChannelSPtrConst_doSize(JLcom/bytedance/ies/nle/editor_jni/VecNLEChromaChannelSPtrConst;)I
.end method

.method public static final native VecNLEChromaChannelSPtrConst_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VecNLEChromaChannelSPtrConst;)Z
.end method

.method public static final native VecNLEChromaChannelSPtrConst_reserve(JLcom/bytedance/ies/nle/editor_jni/VecNLEChromaChannelSPtrConst;J)V
.end method

.method public static final native VecNLEChromaChannelSPtr_capacity(JLcom/bytedance/ies/nle/editor_jni/VecNLEChromaChannelSPtr;)J
.end method

.method public static final native VecNLEChromaChannelSPtr_clear(JLcom/bytedance/ies/nle/editor_jni/VecNLEChromaChannelSPtr;)V
.end method

.method public static final native VecNLEChromaChannelSPtr_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecNLEChromaChannelSPtr;JLcom/bytedance/ies/nle/editor_jni/NLEChromaChannel;)V
.end method

.method public static final native VecNLEChromaChannelSPtr_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLEChromaChannelSPtr;IJLcom/bytedance/ies/nle/editor_jni/NLEChromaChannel;)V
.end method

.method public static final native VecNLEChromaChannelSPtr_doGet(JLcom/bytedance/ies/nle/editor_jni/VecNLEChromaChannelSPtr;I)J
.end method

.method public static final native VecNLEChromaChannelSPtr_doRemove(JLcom/bytedance/ies/nle/editor_jni/VecNLEChromaChannelSPtr;I)J
.end method

.method public static final native VecNLEChromaChannelSPtr_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VecNLEChromaChannelSPtr;II)V
.end method

.method public static final native VecNLEChromaChannelSPtr_doSet(JLcom/bytedance/ies/nle/editor_jni/VecNLEChromaChannelSPtr;IJLcom/bytedance/ies/nle/editor_jni/NLEChromaChannel;)J
.end method

.method public static final native VecNLEChromaChannelSPtr_doSize(JLcom/bytedance/ies/nle/editor_jni/VecNLEChromaChannelSPtr;)I
.end method

.method public static final native VecNLEChromaChannelSPtr_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VecNLEChromaChannelSPtr;)Z
.end method

.method public static final native VecNLEChromaChannelSPtr_reserve(JLcom/bytedance/ies/nle/editor_jni/VecNLEChromaChannelSPtr;J)V
.end method

.method public static final native VecNLECommitSPtrConst_assign(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtrConst;JJLcom/bytedance/ies/nle/editor_jni/NLECommit;)V
.end method

.method public static final native VecNLECommitSPtrConst_back(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtrConst;)J
.end method

.method public static final native VecNLECommitSPtrConst_clear(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtrConst;)V
.end method

.method public static final native VecNLECommitSPtrConst_delitem(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtrConst;I)V
.end method

.method public static final native VecNLECommitSPtrConst_delslice(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtrConst;II)V
.end method

.method public static final native VecNLECommitSPtrConst_empty(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtrConst;)Z
.end method

.method public static final native VecNLECommitSPtrConst_front(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtrConst;)J
.end method

.method public static final native VecNLECommitSPtrConst_getitem(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtrConst;I)J
.end method

.method public static final native VecNLECommitSPtrConst_getslice(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtrConst;II)J
.end method

.method public static final native VecNLECommitSPtrConst_max_size(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtrConst;)J
.end method

.method public static final native VecNLECommitSPtrConst_pop_back(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtrConst;)V
.end method

.method public static final native VecNLECommitSPtrConst_pop_front(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtrConst;)V
.end method

.method public static final native VecNLECommitSPtrConst_push_back(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtrConst;JLcom/bytedance/ies/nle/editor_jni/NLECommit;)V
.end method

.method public static final native VecNLECommitSPtrConst_push_front(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtrConst;JLcom/bytedance/ies/nle/editor_jni/NLECommit;)V
.end method

.method public static final native VecNLECommitSPtrConst_resize__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtrConst;JJLcom/bytedance/ies/nle/editor_jni/NLECommit;)V
.end method

.method public static final native VecNLECommitSPtrConst_resize__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtrConst;J)V
.end method

.method public static final native VecNLECommitSPtrConst_setitem(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtrConst;IJLcom/bytedance/ies/nle/editor_jni/NLECommit;)V
.end method

.method public static final native VecNLECommitSPtrConst_setslice(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtrConst;IIJLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtrConst;)V
.end method

.method public static final native VecNLECommitSPtrConst_size(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtrConst;)J
.end method

.method public static final native VecNLECommitSPtrConst_swap(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtrConst;JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtrConst;)V
.end method

.method public static final native VecNLECommitSPtr_assign(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;JJLcom/bytedance/ies/nle/editor_jni/NLECommit;)V
.end method

.method public static final native VecNLECommitSPtr_back(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;)J
.end method

.method public static final native VecNLECommitSPtr_clear(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;)V
.end method

.method public static final native VecNLECommitSPtr_delitem(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;I)V
.end method

.method public static final native VecNLECommitSPtr_delslice(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;II)V
.end method

.method public static final native VecNLECommitSPtr_empty(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;)Z
.end method

.method public static final native VecNLECommitSPtr_front(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;)J
.end method

.method public static final native VecNLECommitSPtr_getitem(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;I)J
.end method

.method public static final native VecNLECommitSPtr_getslice(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;II)J
.end method

.method public static final native VecNLECommitSPtr_max_size(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;)J
.end method

.method public static final native VecNLECommitSPtr_pop_back(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;)V
.end method

.method public static final native VecNLECommitSPtr_pop_front(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;)V
.end method

.method public static final native VecNLECommitSPtr_push_back(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;JLcom/bytedance/ies/nle/editor_jni/NLECommit;)V
.end method

.method public static final native VecNLECommitSPtr_push_front(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;JLcom/bytedance/ies/nle/editor_jni/NLECommit;)V
.end method

.method public static final native VecNLECommitSPtr_resize__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;JJLcom/bytedance/ies/nle/editor_jni/NLECommit;)V
.end method

.method public static final native VecNLECommitSPtr_resize__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;J)V
.end method

.method public static final native VecNLECommitSPtr_setitem(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;IJLcom/bytedance/ies/nle/editor_jni/NLECommit;)V
.end method

.method public static final native VecNLECommitSPtr_setslice(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;IIJLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;)V
.end method

.method public static final native VecNLECommitSPtr_size(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;)J
.end method

.method public static final native VecNLECommitSPtr_swap(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;)V
.end method

.method public static final native VecNLEFilterSPtrConst_capacity(JLcom/bytedance/ies/nle/editor_jni/VecNLEFilterSPtrConst;)J
.end method

.method public static final native VecNLEFilterSPtrConst_clear(JLcom/bytedance/ies/nle/editor_jni/VecNLEFilterSPtrConst;)V
.end method

.method public static final native VecNLEFilterSPtrConst_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecNLEFilterSPtrConst;JLcom/bytedance/ies/nle/editor_jni/NLEFilter;)V
.end method

.method public static final native VecNLEFilterSPtrConst_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLEFilterSPtrConst;IJLcom/bytedance/ies/nle/editor_jni/NLEFilter;)V
.end method

.method public static final native VecNLEFilterSPtrConst_doGet(JLcom/bytedance/ies/nle/editor_jni/VecNLEFilterSPtrConst;I)J
.end method

.method public static final native VecNLEFilterSPtrConst_doRemove(JLcom/bytedance/ies/nle/editor_jni/VecNLEFilterSPtrConst;I)J
.end method

.method public static final native VecNLEFilterSPtrConst_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VecNLEFilterSPtrConst;II)V
.end method

.method public static final native VecNLEFilterSPtrConst_doSet(JLcom/bytedance/ies/nle/editor_jni/VecNLEFilterSPtrConst;IJLcom/bytedance/ies/nle/editor_jni/NLEFilter;)J
.end method

.method public static final native VecNLEFilterSPtrConst_doSize(JLcom/bytedance/ies/nle/editor_jni/VecNLEFilterSPtrConst;)I
.end method

.method public static final native VecNLEFilterSPtrConst_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VecNLEFilterSPtrConst;)Z
.end method

.method public static final native VecNLEFilterSPtrConst_reserve(JLcom/bytedance/ies/nle/editor_jni/VecNLEFilterSPtrConst;J)V
.end method

.method public static final native VecNLEFilterSPtr_capacity(JLcom/bytedance/ies/nle/editor_jni/VecNLEFilterSPtr;)J
.end method

.method public static final native VecNLEFilterSPtr_clear(JLcom/bytedance/ies/nle/editor_jni/VecNLEFilterSPtr;)V
.end method

.method public static final native VecNLEFilterSPtr_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecNLEFilterSPtr;JLcom/bytedance/ies/nle/editor_jni/NLEFilter;)V
.end method

.method public static final native VecNLEFilterSPtr_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLEFilterSPtr;IJLcom/bytedance/ies/nle/editor_jni/NLEFilter;)V
.end method

.method public static final native VecNLEFilterSPtr_doGet(JLcom/bytedance/ies/nle/editor_jni/VecNLEFilterSPtr;I)J
.end method

.method public static final native VecNLEFilterSPtr_doRemove(JLcom/bytedance/ies/nle/editor_jni/VecNLEFilterSPtr;I)J
.end method

.method public static final native VecNLEFilterSPtr_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VecNLEFilterSPtr;II)V
.end method

.method public static final native VecNLEFilterSPtr_doSet(JLcom/bytedance/ies/nle/editor_jni/VecNLEFilterSPtr;IJLcom/bytedance/ies/nle/editor_jni/NLEFilter;)J
.end method

.method public static final native VecNLEFilterSPtr_doSize(JLcom/bytedance/ies/nle/editor_jni/VecNLEFilterSPtr;)I
.end method

.method public static final native VecNLEFilterSPtr_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VecNLEFilterSPtr;)Z
.end method

.method public static final native VecNLEFilterSPtr_reserve(JLcom/bytedance/ies/nle/editor_jni/VecNLEFilterSPtr;J)V
.end method

.method public static final native VecNLEKeyframeGraphValue_capacity(JLcom/bytedance/ies/nle/editor_jni/VecNLEKeyframeGraphValue;)J
.end method

.method public static final native VecNLEKeyframeGraphValue_clear(JLcom/bytedance/ies/nle/editor_jni/VecNLEKeyframeGraphValue;)V
.end method

.method public static final native VecNLEKeyframeGraphValue_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecNLEKeyframeGraphValue;JLcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphValue;)V
.end method

.method public static final native VecNLEKeyframeGraphValue_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLEKeyframeGraphValue;IJLcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphValue;)V
.end method

.method public static final native VecNLEKeyframeGraphValue_doGet(JLcom/bytedance/ies/nle/editor_jni/VecNLEKeyframeGraphValue;I)J
.end method

.method public static final native VecNLEKeyframeGraphValue_doRemove(JLcom/bytedance/ies/nle/editor_jni/VecNLEKeyframeGraphValue;I)J
.end method

.method public static final native VecNLEKeyframeGraphValue_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VecNLEKeyframeGraphValue;II)V
.end method

.method public static final native VecNLEKeyframeGraphValue_doSet(JLcom/bytedance/ies/nle/editor_jni/VecNLEKeyframeGraphValue;IJLcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphValue;)J
.end method

.method public static final native VecNLEKeyframeGraphValue_doSize(JLcom/bytedance/ies/nle/editor_jni/VecNLEKeyframeGraphValue;)I
.end method

.method public static final native VecNLEKeyframeGraphValue_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VecNLEKeyframeGraphValue;)Z
.end method

.method public static final native VecNLEKeyframeGraphValue_reserve(JLcom/bytedance/ies/nle/editor_jni/VecNLEKeyframeGraphValue;J)V
.end method

.method public static final native VecNLEMVExternalAlgorithmResultSPtrConst_capacity(JLcom/bytedance/ies/nle/editor_jni/VecNLEMVExternalAlgorithmResultSPtrConst;)J
.end method

.method public static final native VecNLEMVExternalAlgorithmResultSPtrConst_clear(JLcom/bytedance/ies/nle/editor_jni/VecNLEMVExternalAlgorithmResultSPtrConst;)V
.end method

.method public static final native VecNLEMVExternalAlgorithmResultSPtrConst_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecNLEMVExternalAlgorithmResultSPtrConst;JLcom/bytedance/ies/nle/editor_jni/NLEMVExternalAlgorithmResult;)V
.end method

.method public static final native VecNLEMVExternalAlgorithmResultSPtrConst_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLEMVExternalAlgorithmResultSPtrConst;IJLcom/bytedance/ies/nle/editor_jni/NLEMVExternalAlgorithmResult;)V
.end method

.method public static final native VecNLEMVExternalAlgorithmResultSPtrConst_doGet(JLcom/bytedance/ies/nle/editor_jni/VecNLEMVExternalAlgorithmResultSPtrConst;I)J
.end method

.method public static final native VecNLEMVExternalAlgorithmResultSPtrConst_doRemove(JLcom/bytedance/ies/nle/editor_jni/VecNLEMVExternalAlgorithmResultSPtrConst;I)J
.end method

.method public static final native VecNLEMVExternalAlgorithmResultSPtrConst_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VecNLEMVExternalAlgorithmResultSPtrConst;II)V
.end method

.method public static final native VecNLEMVExternalAlgorithmResultSPtrConst_doSet(JLcom/bytedance/ies/nle/editor_jni/VecNLEMVExternalAlgorithmResultSPtrConst;IJLcom/bytedance/ies/nle/editor_jni/NLEMVExternalAlgorithmResult;)J
.end method

.method public static final native VecNLEMVExternalAlgorithmResultSPtrConst_doSize(JLcom/bytedance/ies/nle/editor_jni/VecNLEMVExternalAlgorithmResultSPtrConst;)I
.end method

.method public static final native VecNLEMVExternalAlgorithmResultSPtrConst_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VecNLEMVExternalAlgorithmResultSPtrConst;)Z
.end method

.method public static final native VecNLEMVExternalAlgorithmResultSPtrConst_reserve(JLcom/bytedance/ies/nle/editor_jni/VecNLEMVExternalAlgorithmResultSPtrConst;J)V
.end method

.method public static final native VecNLEMVExternalAlgorithmResultSPtr_capacity(JLcom/bytedance/ies/nle/editor_jni/VecNLEMVExternalAlgorithmResultSPtr;)J
.end method

.method public static final native VecNLEMVExternalAlgorithmResultSPtr_clear(JLcom/bytedance/ies/nle/editor_jni/VecNLEMVExternalAlgorithmResultSPtr;)V
.end method

.method public static final native VecNLEMVExternalAlgorithmResultSPtr_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecNLEMVExternalAlgorithmResultSPtr;JLcom/bytedance/ies/nle/editor_jni/NLEMVExternalAlgorithmResult;)V
.end method

.method public static final native VecNLEMVExternalAlgorithmResultSPtr_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLEMVExternalAlgorithmResultSPtr;IJLcom/bytedance/ies/nle/editor_jni/NLEMVExternalAlgorithmResult;)V
.end method

.method public static final native VecNLEMVExternalAlgorithmResultSPtr_doGet(JLcom/bytedance/ies/nle/editor_jni/VecNLEMVExternalAlgorithmResultSPtr;I)J
.end method

.method public static final native VecNLEMVExternalAlgorithmResultSPtr_doRemove(JLcom/bytedance/ies/nle/editor_jni/VecNLEMVExternalAlgorithmResultSPtr;I)J
.end method

.method public static final native VecNLEMVExternalAlgorithmResultSPtr_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VecNLEMVExternalAlgorithmResultSPtr;II)V
.end method

.method public static final native VecNLEMVExternalAlgorithmResultSPtr_doSet(JLcom/bytedance/ies/nle/editor_jni/VecNLEMVExternalAlgorithmResultSPtr;IJLcom/bytedance/ies/nle/editor_jni/NLEMVExternalAlgorithmResult;)J
.end method

.method public static final native VecNLEMVExternalAlgorithmResultSPtr_doSize(JLcom/bytedance/ies/nle/editor_jni/VecNLEMVExternalAlgorithmResultSPtr;)I
.end method

.method public static final native VecNLEMVExternalAlgorithmResultSPtr_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VecNLEMVExternalAlgorithmResultSPtr;)Z
.end method

.method public static final native VecNLEMVExternalAlgorithmResultSPtr_reserve(JLcom/bytedance/ies/nle/editor_jni/VecNLEMVExternalAlgorithmResultSPtr;J)V
.end method

.method public static final native VecNLEMaskSPtrConst_capacity(JLcom/bytedance/ies/nle/editor_jni/VecNLEMaskSPtrConst;)J
.end method

.method public static final native VecNLEMaskSPtrConst_clear(JLcom/bytedance/ies/nle/editor_jni/VecNLEMaskSPtrConst;)V
.end method

.method public static final native VecNLEMaskSPtrConst_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecNLEMaskSPtrConst;JLcom/bytedance/ies/nle/editor_jni/NLEMask;)V
.end method

.method public static final native VecNLEMaskSPtrConst_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLEMaskSPtrConst;IJLcom/bytedance/ies/nle/editor_jni/NLEMask;)V
.end method

.method public static final native VecNLEMaskSPtrConst_doGet(JLcom/bytedance/ies/nle/editor_jni/VecNLEMaskSPtrConst;I)J
.end method

.method public static final native VecNLEMaskSPtrConst_doRemove(JLcom/bytedance/ies/nle/editor_jni/VecNLEMaskSPtrConst;I)J
.end method

.method public static final native VecNLEMaskSPtrConst_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VecNLEMaskSPtrConst;II)V
.end method

.method public static final native VecNLEMaskSPtrConst_doSet(JLcom/bytedance/ies/nle/editor_jni/VecNLEMaskSPtrConst;IJLcom/bytedance/ies/nle/editor_jni/NLEMask;)J
.end method

.method public static final native VecNLEMaskSPtrConst_doSize(JLcom/bytedance/ies/nle/editor_jni/VecNLEMaskSPtrConst;)I
.end method

.method public static final native VecNLEMaskSPtrConst_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VecNLEMaskSPtrConst;)Z
.end method

.method public static final native VecNLEMaskSPtrConst_reserve(JLcom/bytedance/ies/nle/editor_jni/VecNLEMaskSPtrConst;J)V
.end method

.method public static final native VecNLEMaskSPtr_capacity(JLcom/bytedance/ies/nle/editor_jni/VecNLEMaskSPtr;)J
.end method

.method public static final native VecNLEMaskSPtr_clear(JLcom/bytedance/ies/nle/editor_jni/VecNLEMaskSPtr;)V
.end method

.method public static final native VecNLEMaskSPtr_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecNLEMaskSPtr;JLcom/bytedance/ies/nle/editor_jni/NLEMask;)V
.end method

.method public static final native VecNLEMaskSPtr_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLEMaskSPtr;IJLcom/bytedance/ies/nle/editor_jni/NLEMask;)V
.end method

.method public static final native VecNLEMaskSPtr_doGet(JLcom/bytedance/ies/nle/editor_jni/VecNLEMaskSPtr;I)J
.end method

.method public static final native VecNLEMaskSPtr_doRemove(JLcom/bytedance/ies/nle/editor_jni/VecNLEMaskSPtr;I)J
.end method

.method public static final native VecNLEMaskSPtr_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VecNLEMaskSPtr;II)V
.end method

.method public static final native VecNLEMaskSPtr_doSet(JLcom/bytedance/ies/nle/editor_jni/VecNLEMaskSPtr;IJLcom/bytedance/ies/nle/editor_jni/NLEMask;)J
.end method

.method public static final native VecNLEMaskSPtr_doSize(JLcom/bytedance/ies/nle/editor_jni/VecNLEMaskSPtr;)I
.end method

.method public static final native VecNLEMaskSPtr_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VecNLEMaskSPtr;)Z
.end method

.method public static final native VecNLEMaskSPtr_reserve(JLcom/bytedance/ies/nle/editor_jni/VecNLEMaskSPtr;J)V
.end method

.method public static final native VecNLENoiseReductionSPtrConst_capacity(JLcom/bytedance/ies/nle/editor_jni/VecNLENoiseReductionSPtrConst;)J
.end method

.method public static final native VecNLENoiseReductionSPtrConst_clear(JLcom/bytedance/ies/nle/editor_jni/VecNLENoiseReductionSPtrConst;)V
.end method

.method public static final native VecNLENoiseReductionSPtrConst_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecNLENoiseReductionSPtrConst;JLcom/bytedance/ies/nle/editor_jni/NLENoiseReduction;)V
.end method

.method public static final native VecNLENoiseReductionSPtrConst_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLENoiseReductionSPtrConst;IJLcom/bytedance/ies/nle/editor_jni/NLENoiseReduction;)V
.end method

.method public static final native VecNLENoiseReductionSPtrConst_doGet(JLcom/bytedance/ies/nle/editor_jni/VecNLENoiseReductionSPtrConst;I)J
.end method

.method public static final native VecNLENoiseReductionSPtrConst_doRemove(JLcom/bytedance/ies/nle/editor_jni/VecNLENoiseReductionSPtrConst;I)J
.end method

.method public static final native VecNLENoiseReductionSPtrConst_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VecNLENoiseReductionSPtrConst;II)V
.end method

.method public static final native VecNLENoiseReductionSPtrConst_doSet(JLcom/bytedance/ies/nle/editor_jni/VecNLENoiseReductionSPtrConst;IJLcom/bytedance/ies/nle/editor_jni/NLENoiseReduction;)J
.end method

.method public static final native VecNLENoiseReductionSPtrConst_doSize(JLcom/bytedance/ies/nle/editor_jni/VecNLENoiseReductionSPtrConst;)I
.end method

.method public static final native VecNLENoiseReductionSPtrConst_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VecNLENoiseReductionSPtrConst;)Z
.end method

.method public static final native VecNLENoiseReductionSPtrConst_reserve(JLcom/bytedance/ies/nle/editor_jni/VecNLENoiseReductionSPtrConst;J)V
.end method

.method public static final native VecNLENoiseReductionSPtr_capacity(JLcom/bytedance/ies/nle/editor_jni/VecNLENoiseReductionSPtr;)J
.end method

.method public static final native VecNLENoiseReductionSPtr_clear(JLcom/bytedance/ies/nle/editor_jni/VecNLENoiseReductionSPtr;)V
.end method

.method public static final native VecNLENoiseReductionSPtr_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecNLENoiseReductionSPtr;JLcom/bytedance/ies/nle/editor_jni/NLENoiseReduction;)V
.end method

.method public static final native VecNLENoiseReductionSPtr_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLENoiseReductionSPtr;IJLcom/bytedance/ies/nle/editor_jni/NLENoiseReduction;)V
.end method

.method public static final native VecNLENoiseReductionSPtr_doGet(JLcom/bytedance/ies/nle/editor_jni/VecNLENoiseReductionSPtr;I)J
.end method

.method public static final native VecNLENoiseReductionSPtr_doRemove(JLcom/bytedance/ies/nle/editor_jni/VecNLENoiseReductionSPtr;I)J
.end method

.method public static final native VecNLENoiseReductionSPtr_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VecNLENoiseReductionSPtr;II)V
.end method

.method public static final native VecNLENoiseReductionSPtr_doSet(JLcom/bytedance/ies/nle/editor_jni/VecNLENoiseReductionSPtr;IJLcom/bytedance/ies/nle/editor_jni/NLENoiseReduction;)J
.end method

.method public static final native VecNLENoiseReductionSPtr_doSize(JLcom/bytedance/ies/nle/editor_jni/VecNLENoiseReductionSPtr;)I
.end method

.method public static final native VecNLENoiseReductionSPtr_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VecNLENoiseReductionSPtr;)Z
.end method

.method public static final native VecNLENoiseReductionSPtr_reserve(JLcom/bytedance/ies/nle/editor_jni/VecNLENoiseReductionSPtr;J)V
.end method

.method public static final native VecNLEPointSPtrConst_capacity(JLcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtrConst;)J
.end method

.method public static final native VecNLEPointSPtrConst_clear(JLcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtrConst;)V
.end method

.method public static final native VecNLEPointSPtrConst_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtrConst;JLcom/bytedance/ies/nle/editor_jni/NLEPoint;)V
.end method

.method public static final native VecNLEPointSPtrConst_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtrConst;IJLcom/bytedance/ies/nle/editor_jni/NLEPoint;)V
.end method

.method public static final native VecNLEPointSPtrConst_doGet(JLcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtrConst;I)J
.end method

.method public static final native VecNLEPointSPtrConst_doRemove(JLcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtrConst;I)J
.end method

.method public static final native VecNLEPointSPtrConst_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtrConst;II)V
.end method

.method public static final native VecNLEPointSPtrConst_doSet(JLcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtrConst;IJLcom/bytedance/ies/nle/editor_jni/NLEPoint;)J
.end method

.method public static final native VecNLEPointSPtrConst_doSize(JLcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtrConst;)I
.end method

.method public static final native VecNLEPointSPtrConst_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtrConst;)Z
.end method

.method public static final native VecNLEPointSPtrConst_reserve(JLcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtrConst;J)V
.end method

.method public static final native VecNLEPointSPtr_capacity(JLcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;)J
.end method

.method public static final native VecNLEPointSPtr_clear(JLcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;)V
.end method

.method public static final native VecNLEPointSPtr_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;JLcom/bytedance/ies/nle/editor_jni/NLEPoint;)V
.end method

.method public static final native VecNLEPointSPtr_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;IJLcom/bytedance/ies/nle/editor_jni/NLEPoint;)V
.end method

.method public static final native VecNLEPointSPtr_doGet(JLcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;I)J
.end method

.method public static final native VecNLEPointSPtr_doRemove(JLcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;I)J
.end method

.method public static final native VecNLEPointSPtr_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;II)V
.end method

.method public static final native VecNLEPointSPtr_doSet(JLcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;IJLcom/bytedance/ies/nle/editor_jni/NLEPoint;)J
.end method

.method public static final native VecNLEPointSPtr_doSize(JLcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;)I
.end method

.method public static final native VecNLEPointSPtr_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;)Z
.end method

.method public static final native VecNLEPointSPtr_reserve(JLcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;J)V
.end method

.method public static final native VecNLEResourceNodeSPtrConst_capacity(JLcom/bytedance/ies/nle/editor_jni/VecNLEResourceNodeSPtrConst;)J
.end method

.method public static final native VecNLEResourceNodeSPtrConst_clear(JLcom/bytedance/ies/nle/editor_jni/VecNLEResourceNodeSPtrConst;)V
.end method

.method public static final native VecNLEResourceNodeSPtrConst_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecNLEResourceNodeSPtrConst;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
.end method

.method public static final native VecNLEResourceNodeSPtrConst_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLEResourceNodeSPtrConst;IJLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
.end method

.method public static final native VecNLEResourceNodeSPtrConst_doGet(JLcom/bytedance/ies/nle/editor_jni/VecNLEResourceNodeSPtrConst;I)J
.end method

.method public static final native VecNLEResourceNodeSPtrConst_doRemove(JLcom/bytedance/ies/nle/editor_jni/VecNLEResourceNodeSPtrConst;I)J
.end method

.method public static final native VecNLEResourceNodeSPtrConst_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VecNLEResourceNodeSPtrConst;II)V
.end method

.method public static final native VecNLEResourceNodeSPtrConst_doSet(JLcom/bytedance/ies/nle/editor_jni/VecNLEResourceNodeSPtrConst;IJLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)J
.end method

.method public static final native VecNLEResourceNodeSPtrConst_doSize(JLcom/bytedance/ies/nle/editor_jni/VecNLEResourceNodeSPtrConst;)I
.end method

.method public static final native VecNLEResourceNodeSPtrConst_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VecNLEResourceNodeSPtrConst;)Z
.end method

.method public static final native VecNLEResourceNodeSPtrConst_reserve(JLcom/bytedance/ies/nle/editor_jni/VecNLEResourceNodeSPtrConst;J)V
.end method

.method public static final native VecNLEResourceNodeSPtr_capacity(JLcom/bytedance/ies/nle/editor_jni/VecNLEResourceNodeSPtr;)J
.end method

.method public static final native VecNLEResourceNodeSPtr_clear(JLcom/bytedance/ies/nle/editor_jni/VecNLEResourceNodeSPtr;)V
.end method

.method public static final native VecNLEResourceNodeSPtr_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecNLEResourceNodeSPtr;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
.end method

.method public static final native VecNLEResourceNodeSPtr_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLEResourceNodeSPtr;IJLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
.end method

.method public static final native VecNLEResourceNodeSPtr_doGet(JLcom/bytedance/ies/nle/editor_jni/VecNLEResourceNodeSPtr;I)J
.end method

.method public static final native VecNLEResourceNodeSPtr_doRemove(JLcom/bytedance/ies/nle/editor_jni/VecNLEResourceNodeSPtr;I)J
.end method

.method public static final native VecNLEResourceNodeSPtr_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VecNLEResourceNodeSPtr;II)V
.end method

.method public static final native VecNLEResourceNodeSPtr_doSet(JLcom/bytedance/ies/nle/editor_jni/VecNLEResourceNodeSPtr;IJLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)J
.end method

.method public static final native VecNLEResourceNodeSPtr_doSize(JLcom/bytedance/ies/nle/editor_jni/VecNLEResourceNodeSPtr;)I
.end method

.method public static final native VecNLEResourceNodeSPtr_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VecNLEResourceNodeSPtr;)Z
.end method

.method public static final native VecNLEResourceNodeSPtr_reserve(JLcom/bytedance/ies/nle/editor_jni/VecNLEResourceNodeSPtr;J)V
.end method

.method public static final native VecNLESegmentEffectStickerSPtrConst_capacity(JLcom/bytedance/ies/nle/editor_jni/VecNLESegmentEffectStickerSPtrConst;)J
.end method

.method public static final native VecNLESegmentEffectStickerSPtrConst_clear(JLcom/bytedance/ies/nle/editor_jni/VecNLESegmentEffectStickerSPtrConst;)V
.end method

.method public static final native VecNLESegmentEffectStickerSPtrConst_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecNLESegmentEffectStickerSPtrConst;JLcom/bytedance/ies/nle/editor_jni/NLESegmentEffectSticker;)V
.end method

.method public static final native VecNLESegmentEffectStickerSPtrConst_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLESegmentEffectStickerSPtrConst;IJLcom/bytedance/ies/nle/editor_jni/NLESegmentEffectSticker;)V
.end method

.method public static final native VecNLESegmentEffectStickerSPtrConst_doGet(JLcom/bytedance/ies/nle/editor_jni/VecNLESegmentEffectStickerSPtrConst;I)J
.end method

.method public static final native VecNLESegmentEffectStickerSPtrConst_doRemove(JLcom/bytedance/ies/nle/editor_jni/VecNLESegmentEffectStickerSPtrConst;I)J
.end method

.method public static final native VecNLESegmentEffectStickerSPtrConst_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VecNLESegmentEffectStickerSPtrConst;II)V
.end method

.method public static final native VecNLESegmentEffectStickerSPtrConst_doSet(JLcom/bytedance/ies/nle/editor_jni/VecNLESegmentEffectStickerSPtrConst;IJLcom/bytedance/ies/nle/editor_jni/NLESegmentEffectSticker;)J
.end method

.method public static final native VecNLESegmentEffectStickerSPtrConst_doSize(JLcom/bytedance/ies/nle/editor_jni/VecNLESegmentEffectStickerSPtrConst;)I
.end method

.method public static final native VecNLESegmentEffectStickerSPtrConst_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VecNLESegmentEffectStickerSPtrConst;)Z
.end method

.method public static final native VecNLESegmentEffectStickerSPtrConst_reserve(JLcom/bytedance/ies/nle/editor_jni/VecNLESegmentEffectStickerSPtrConst;J)V
.end method

.method public static final native VecNLESegmentEffectStickerSPtr_capacity(JLcom/bytedance/ies/nle/editor_jni/VecNLESegmentEffectStickerSPtr;)J
.end method

.method public static final native VecNLESegmentEffectStickerSPtr_clear(JLcom/bytedance/ies/nle/editor_jni/VecNLESegmentEffectStickerSPtr;)V
.end method

.method public static final native VecNLESegmentEffectStickerSPtr_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecNLESegmentEffectStickerSPtr;JLcom/bytedance/ies/nle/editor_jni/NLESegmentEffectSticker;)V
.end method

.method public static final native VecNLESegmentEffectStickerSPtr_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLESegmentEffectStickerSPtr;IJLcom/bytedance/ies/nle/editor_jni/NLESegmentEffectSticker;)V
.end method

.method public static final native VecNLESegmentEffectStickerSPtr_doGet(JLcom/bytedance/ies/nle/editor_jni/VecNLESegmentEffectStickerSPtr;I)J
.end method

.method public static final native VecNLESegmentEffectStickerSPtr_doRemove(JLcom/bytedance/ies/nle/editor_jni/VecNLESegmentEffectStickerSPtr;I)J
.end method

.method public static final native VecNLESegmentEffectStickerSPtr_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VecNLESegmentEffectStickerSPtr;II)V
.end method

.method public static final native VecNLESegmentEffectStickerSPtr_doSet(JLcom/bytedance/ies/nle/editor_jni/VecNLESegmentEffectStickerSPtr;IJLcom/bytedance/ies/nle/editor_jni/NLESegmentEffectSticker;)J
.end method

.method public static final native VecNLESegmentEffectStickerSPtr_doSize(JLcom/bytedance/ies/nle/editor_jni/VecNLESegmentEffectStickerSPtr;)I
.end method

.method public static final native VecNLESegmentEffectStickerSPtr_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VecNLESegmentEffectStickerSPtr;)Z
.end method

.method public static final native VecNLESegmentEffectStickerSPtr_reserve(JLcom/bytedance/ies/nle/editor_jni/VecNLESegmentEffectStickerSPtr;J)V
.end method

.method public static final native VecNLESegmentSPtrConst_capacity(JLcom/bytedance/ies/nle/editor_jni/VecNLESegmentSPtrConst;)J
.end method

.method public static final native VecNLESegmentSPtrConst_clear(JLcom/bytedance/ies/nle/editor_jni/VecNLESegmentSPtrConst;)V
.end method

.method public static final native VecNLESegmentSPtrConst_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecNLESegmentSPtrConst;JLcom/bytedance/ies/nle/editor_jni/NLESegment;)V
.end method

.method public static final native VecNLESegmentSPtrConst_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLESegmentSPtrConst;IJLcom/bytedance/ies/nle/editor_jni/NLESegment;)V
.end method

.method public static final native VecNLESegmentSPtrConst_doGet(JLcom/bytedance/ies/nle/editor_jni/VecNLESegmentSPtrConst;I)J
.end method

.method public static final native VecNLESegmentSPtrConst_doRemove(JLcom/bytedance/ies/nle/editor_jni/VecNLESegmentSPtrConst;I)J
.end method

.method public static final native VecNLESegmentSPtrConst_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VecNLESegmentSPtrConst;II)V
.end method

.method public static final native VecNLESegmentSPtrConst_doSet(JLcom/bytedance/ies/nle/editor_jni/VecNLESegmentSPtrConst;IJLcom/bytedance/ies/nle/editor_jni/NLESegment;)J
.end method

.method public static final native VecNLESegmentSPtrConst_doSize(JLcom/bytedance/ies/nle/editor_jni/VecNLESegmentSPtrConst;)I
.end method

.method public static final native VecNLESegmentSPtrConst_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VecNLESegmentSPtrConst;)Z
.end method

.method public static final native VecNLESegmentSPtrConst_reserve(JLcom/bytedance/ies/nle/editor_jni/VecNLESegmentSPtrConst;J)V
.end method

.method public static final native VecNLESegmentSPtr_capacity(JLcom/bytedance/ies/nle/editor_jni/VecNLESegmentSPtr;)J
.end method

.method public static final native VecNLESegmentSPtr_clear(JLcom/bytedance/ies/nle/editor_jni/VecNLESegmentSPtr;)V
.end method

.method public static final native VecNLESegmentSPtr_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecNLESegmentSPtr;JLcom/bytedance/ies/nle/editor_jni/NLESegment;)V
.end method

.method public static final native VecNLESegmentSPtr_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLESegmentSPtr;IJLcom/bytedance/ies/nle/editor_jni/NLESegment;)V
.end method

.method public static final native VecNLESegmentSPtr_doGet(JLcom/bytedance/ies/nle/editor_jni/VecNLESegmentSPtr;I)J
.end method

.method public static final native VecNLESegmentSPtr_doRemove(JLcom/bytedance/ies/nle/editor_jni/VecNLESegmentSPtr;I)J
.end method

.method public static final native VecNLESegmentSPtr_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VecNLESegmentSPtr;II)V
.end method

.method public static final native VecNLESegmentSPtr_doSet(JLcom/bytedance/ies/nle/editor_jni/VecNLESegmentSPtr;IJLcom/bytedance/ies/nle/editor_jni/NLESegment;)J
.end method

.method public static final native VecNLESegmentSPtr_doSize(JLcom/bytedance/ies/nle/editor_jni/VecNLESegmentSPtr;)I
.end method

.method public static final native VecNLESegmentSPtr_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VecNLESegmentSPtr;)Z
.end method

.method public static final native VecNLESegmentSPtr_reserve(JLcom/bytedance/ies/nle/editor_jni/VecNLESegmentSPtr;J)V
.end method

.method public static final native VecNLEStringFloatPairSPtrConst_capacity(JLcom/bytedance/ies/nle/editor_jni/VecNLEStringFloatPairSPtrConst;)J
.end method

.method public static final native VecNLEStringFloatPairSPtrConst_clear(JLcom/bytedance/ies/nle/editor_jni/VecNLEStringFloatPairSPtrConst;)V
.end method

.method public static final native VecNLEStringFloatPairSPtrConst_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecNLEStringFloatPairSPtrConst;JLcom/bytedance/ies/nle/editor_jni/NLEStringFloatPair;)V
.end method

.method public static final native VecNLEStringFloatPairSPtrConst_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLEStringFloatPairSPtrConst;IJLcom/bytedance/ies/nle/editor_jni/NLEStringFloatPair;)V
.end method

.method public static final native VecNLEStringFloatPairSPtrConst_doGet(JLcom/bytedance/ies/nle/editor_jni/VecNLEStringFloatPairSPtrConst;I)J
.end method

.method public static final native VecNLEStringFloatPairSPtrConst_doRemove(JLcom/bytedance/ies/nle/editor_jni/VecNLEStringFloatPairSPtrConst;I)J
.end method

.method public static final native VecNLEStringFloatPairSPtrConst_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VecNLEStringFloatPairSPtrConst;II)V
.end method

.method public static final native VecNLEStringFloatPairSPtrConst_doSet(JLcom/bytedance/ies/nle/editor_jni/VecNLEStringFloatPairSPtrConst;IJLcom/bytedance/ies/nle/editor_jni/NLEStringFloatPair;)J
.end method

.method public static final native VecNLEStringFloatPairSPtrConst_doSize(JLcom/bytedance/ies/nle/editor_jni/VecNLEStringFloatPairSPtrConst;)I
.end method

.method public static final native VecNLEStringFloatPairSPtrConst_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VecNLEStringFloatPairSPtrConst;)Z
.end method

.method public static final native VecNLEStringFloatPairSPtrConst_reserve(JLcom/bytedance/ies/nle/editor_jni/VecNLEStringFloatPairSPtrConst;J)V
.end method

.method public static final native VecNLEStringFloatPairSPtr_capacity(JLcom/bytedance/ies/nle/editor_jni/VecNLEStringFloatPairSPtr;)J
.end method

.method public static final native VecNLEStringFloatPairSPtr_clear(JLcom/bytedance/ies/nle/editor_jni/VecNLEStringFloatPairSPtr;)V
.end method

.method public static final native VecNLEStringFloatPairSPtr_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecNLEStringFloatPairSPtr;JLcom/bytedance/ies/nle/editor_jni/NLEStringFloatPair;)V
.end method

.method public static final native VecNLEStringFloatPairSPtr_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLEStringFloatPairSPtr;IJLcom/bytedance/ies/nle/editor_jni/NLEStringFloatPair;)V
.end method

.method public static final native VecNLEStringFloatPairSPtr_doGet(JLcom/bytedance/ies/nle/editor_jni/VecNLEStringFloatPairSPtr;I)J
.end method

.method public static final native VecNLEStringFloatPairSPtr_doRemove(JLcom/bytedance/ies/nle/editor_jni/VecNLEStringFloatPairSPtr;I)J
.end method

.method public static final native VecNLEStringFloatPairSPtr_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VecNLEStringFloatPairSPtr;II)V
.end method

.method public static final native VecNLEStringFloatPairSPtr_doSet(JLcom/bytedance/ies/nle/editor_jni/VecNLEStringFloatPairSPtr;IJLcom/bytedance/ies/nle/editor_jni/NLEStringFloatPair;)J
.end method

.method public static final native VecNLEStringFloatPairSPtr_doSize(JLcom/bytedance/ies/nle/editor_jni/VecNLEStringFloatPairSPtr;)I
.end method

.method public static final native VecNLEStringFloatPairSPtr_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VecNLEStringFloatPairSPtr;)Z
.end method

.method public static final native VecNLEStringFloatPairSPtr_reserve(JLcom/bytedance/ies/nle/editor_jni/VecNLEStringFloatPairSPtr;J)V
.end method

.method public static final native VecNLEStyStickerAnim_capacity(JLcom/bytedance/ies/nle/editor_jni/VecNLEStyStickerAnim;)J
.end method

.method public static final native VecNLEStyStickerAnim_clear(JLcom/bytedance/ies/nle/editor_jni/VecNLEStyStickerAnim;)V
.end method

.method public static final native VecNLEStyStickerAnim_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecNLEStyStickerAnim;JLcom/bytedance/ies/nle/editor_jni/NLEStyStickerAnim;)V
.end method

.method public static final native VecNLEStyStickerAnim_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLEStyStickerAnim;IJLcom/bytedance/ies/nle/editor_jni/NLEStyStickerAnim;)V
.end method

.method public static final native VecNLEStyStickerAnim_doGet(JLcom/bytedance/ies/nle/editor_jni/VecNLEStyStickerAnim;I)J
.end method

.method public static final native VecNLEStyStickerAnim_doRemove(JLcom/bytedance/ies/nle/editor_jni/VecNLEStyStickerAnim;I)J
.end method

.method public static final native VecNLEStyStickerAnim_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VecNLEStyStickerAnim;II)V
.end method

.method public static final native VecNLEStyStickerAnim_doSet(JLcom/bytedance/ies/nle/editor_jni/VecNLEStyStickerAnim;IJLcom/bytedance/ies/nle/editor_jni/NLEStyStickerAnim;)J
.end method

.method public static final native VecNLEStyStickerAnim_doSize(JLcom/bytedance/ies/nle/editor_jni/VecNLEStyStickerAnim;)I
.end method

.method public static final native VecNLEStyStickerAnim_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VecNLEStyStickerAnim;)Z
.end method

.method public static final native VecNLEStyStickerAnim_reserve(JLcom/bytedance/ies/nle/editor_jni/VecNLEStyStickerAnim;J)V
.end method

.method public static final native VecNLETextTemplateClipSPtrConst_capacity(JLcom/bytedance/ies/nle/editor_jni/VecNLETextTemplateClipSPtrConst;)J
.end method

.method public static final native VecNLETextTemplateClipSPtrConst_clear(JLcom/bytedance/ies/nle/editor_jni/VecNLETextTemplateClipSPtrConst;)V
.end method

.method public static final native VecNLETextTemplateClipSPtrConst_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecNLETextTemplateClipSPtrConst;JLcom/bytedance/ies/nle/editor_jni/NLETextTemplateClip;)V
.end method

.method public static final native VecNLETextTemplateClipSPtrConst_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLETextTemplateClipSPtrConst;IJLcom/bytedance/ies/nle/editor_jni/NLETextTemplateClip;)V
.end method

.method public static final native VecNLETextTemplateClipSPtrConst_doGet(JLcom/bytedance/ies/nle/editor_jni/VecNLETextTemplateClipSPtrConst;I)J
.end method

.method public static final native VecNLETextTemplateClipSPtrConst_doRemove(JLcom/bytedance/ies/nle/editor_jni/VecNLETextTemplateClipSPtrConst;I)J
.end method

.method public static final native VecNLETextTemplateClipSPtrConst_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VecNLETextTemplateClipSPtrConst;II)V
.end method

.method public static final native VecNLETextTemplateClipSPtrConst_doSet(JLcom/bytedance/ies/nle/editor_jni/VecNLETextTemplateClipSPtrConst;IJLcom/bytedance/ies/nle/editor_jni/NLETextTemplateClip;)J
.end method

.method public static final native VecNLETextTemplateClipSPtrConst_doSize(JLcom/bytedance/ies/nle/editor_jni/VecNLETextTemplateClipSPtrConst;)I
.end method

.method public static final native VecNLETextTemplateClipSPtrConst_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VecNLETextTemplateClipSPtrConst;)Z
.end method

.method public static final native VecNLETextTemplateClipSPtrConst_reserve(JLcom/bytedance/ies/nle/editor_jni/VecNLETextTemplateClipSPtrConst;J)V
.end method

.method public static final native VecNLETextTemplateClipSPtr_capacity(JLcom/bytedance/ies/nle/editor_jni/VecNLETextTemplateClipSPtr;)J
.end method

.method public static final native VecNLETextTemplateClipSPtr_clear(JLcom/bytedance/ies/nle/editor_jni/VecNLETextTemplateClipSPtr;)V
.end method

.method public static final native VecNLETextTemplateClipSPtr_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecNLETextTemplateClipSPtr;JLcom/bytedance/ies/nle/editor_jni/NLETextTemplateClip;)V
.end method

.method public static final native VecNLETextTemplateClipSPtr_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLETextTemplateClipSPtr;IJLcom/bytedance/ies/nle/editor_jni/NLETextTemplateClip;)V
.end method

.method public static final native VecNLETextTemplateClipSPtr_doGet(JLcom/bytedance/ies/nle/editor_jni/VecNLETextTemplateClipSPtr;I)J
.end method

.method public static final native VecNLETextTemplateClipSPtr_doRemove(JLcom/bytedance/ies/nle/editor_jni/VecNLETextTemplateClipSPtr;I)J
.end method

.method public static final native VecNLETextTemplateClipSPtr_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VecNLETextTemplateClipSPtr;II)V
.end method

.method public static final native VecNLETextTemplateClipSPtr_doSet(JLcom/bytedance/ies/nle/editor_jni/VecNLETextTemplateClipSPtr;IJLcom/bytedance/ies/nle/editor_jni/NLETextTemplateClip;)J
.end method

.method public static final native VecNLETextTemplateClipSPtr_doSize(JLcom/bytedance/ies/nle/editor_jni/VecNLETextTemplateClipSPtr;)I
.end method

.method public static final native VecNLETextTemplateClipSPtr_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VecNLETextTemplateClipSPtr;)Z
.end method

.method public static final native VecNLETextTemplateClipSPtr_reserve(JLcom/bytedance/ies/nle/editor_jni/VecNLETextTemplateClipSPtr;J)V
.end method

.method public static final native VecNLETimeEffectSPtrConst_capacity(JLcom/bytedance/ies/nle/editor_jni/VecNLETimeEffectSPtrConst;)J
.end method

.method public static final native VecNLETimeEffectSPtrConst_clear(JLcom/bytedance/ies/nle/editor_jni/VecNLETimeEffectSPtrConst;)V
.end method

.method public static final native VecNLETimeEffectSPtrConst_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecNLETimeEffectSPtrConst;JLcom/bytedance/ies/nle/editor_jni/NLETimeEffect;)V
.end method

.method public static final native VecNLETimeEffectSPtrConst_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLETimeEffectSPtrConst;IJLcom/bytedance/ies/nle/editor_jni/NLETimeEffect;)V
.end method

.method public static final native VecNLETimeEffectSPtrConst_doGet(JLcom/bytedance/ies/nle/editor_jni/VecNLETimeEffectSPtrConst;I)J
.end method

.method public static final native VecNLETimeEffectSPtrConst_doRemove(JLcom/bytedance/ies/nle/editor_jni/VecNLETimeEffectSPtrConst;I)J
.end method

.method public static final native VecNLETimeEffectSPtrConst_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VecNLETimeEffectSPtrConst;II)V
.end method

.method public static final native VecNLETimeEffectSPtrConst_doSet(JLcom/bytedance/ies/nle/editor_jni/VecNLETimeEffectSPtrConst;IJLcom/bytedance/ies/nle/editor_jni/NLETimeEffect;)J
.end method

.method public static final native VecNLETimeEffectSPtrConst_doSize(JLcom/bytedance/ies/nle/editor_jni/VecNLETimeEffectSPtrConst;)I
.end method

.method public static final native VecNLETimeEffectSPtrConst_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VecNLETimeEffectSPtrConst;)Z
.end method

.method public static final native VecNLETimeEffectSPtrConst_reserve(JLcom/bytedance/ies/nle/editor_jni/VecNLETimeEffectSPtrConst;J)V
.end method

.method public static final native VecNLETimeEffectSPtr_capacity(JLcom/bytedance/ies/nle/editor_jni/VecNLETimeEffectSPtr;)J
.end method

.method public static final native VecNLETimeEffectSPtr_clear(JLcom/bytedance/ies/nle/editor_jni/VecNLETimeEffectSPtr;)V
.end method

.method public static final native VecNLETimeEffectSPtr_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecNLETimeEffectSPtr;JLcom/bytedance/ies/nle/editor_jni/NLETimeEffect;)V
.end method

.method public static final native VecNLETimeEffectSPtr_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLETimeEffectSPtr;IJLcom/bytedance/ies/nle/editor_jni/NLETimeEffect;)V
.end method

.method public static final native VecNLETimeEffectSPtr_doGet(JLcom/bytedance/ies/nle/editor_jni/VecNLETimeEffectSPtr;I)J
.end method

.method public static final native VecNLETimeEffectSPtr_doRemove(JLcom/bytedance/ies/nle/editor_jni/VecNLETimeEffectSPtr;I)J
.end method

.method public static final native VecNLETimeEffectSPtr_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VecNLETimeEffectSPtr;II)V
.end method

.method public static final native VecNLETimeEffectSPtr_doSet(JLcom/bytedance/ies/nle/editor_jni/VecNLETimeEffectSPtr;IJLcom/bytedance/ies/nle/editor_jni/NLETimeEffect;)J
.end method

.method public static final native VecNLETimeEffectSPtr_doSize(JLcom/bytedance/ies/nle/editor_jni/VecNLETimeEffectSPtr;)I
.end method

.method public static final native VecNLETimeEffectSPtr_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VecNLETimeEffectSPtr;)Z
.end method

.method public static final native VecNLETimeEffectSPtr_reserve(JLcom/bytedance/ies/nle/editor_jni/VecNLETimeEffectSPtr;J)V
.end method

.method public static final native VecNLETimeSpaceNodeSPtrConst_capacity(JLcom/bytedance/ies/nle/editor_jni/VecNLETimeSpaceNodeSPtrConst;)J
.end method

.method public static final native VecNLETimeSpaceNodeSPtrConst_clear(JLcom/bytedance/ies/nle/editor_jni/VecNLETimeSpaceNodeSPtrConst;)V
.end method

.method public static final native VecNLETimeSpaceNodeSPtrConst_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecNLETimeSpaceNodeSPtrConst;JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)V
.end method

.method public static final native VecNLETimeSpaceNodeSPtrConst_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLETimeSpaceNodeSPtrConst;IJLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)V
.end method

.method public static final native VecNLETimeSpaceNodeSPtrConst_doGet(JLcom/bytedance/ies/nle/editor_jni/VecNLETimeSpaceNodeSPtrConst;I)J
.end method

.method public static final native VecNLETimeSpaceNodeSPtrConst_doRemove(JLcom/bytedance/ies/nle/editor_jni/VecNLETimeSpaceNodeSPtrConst;I)J
.end method

.method public static final native VecNLETimeSpaceNodeSPtrConst_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VecNLETimeSpaceNodeSPtrConst;II)V
.end method

.method public static final native VecNLETimeSpaceNodeSPtrConst_doSet(JLcom/bytedance/ies/nle/editor_jni/VecNLETimeSpaceNodeSPtrConst;IJLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)J
.end method

.method public static final native VecNLETimeSpaceNodeSPtrConst_doSize(JLcom/bytedance/ies/nle/editor_jni/VecNLETimeSpaceNodeSPtrConst;)I
.end method

.method public static final native VecNLETimeSpaceNodeSPtrConst_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VecNLETimeSpaceNodeSPtrConst;)Z
.end method

.method public static final native VecNLETimeSpaceNodeSPtrConst_reserve(JLcom/bytedance/ies/nle/editor_jni/VecNLETimeSpaceNodeSPtrConst;J)V
.end method

.method public static final native VecNLETimeSpaceNodeSPtr_capacity(JLcom/bytedance/ies/nle/editor_jni/VecNLETimeSpaceNodeSPtr;)J
.end method

.method public static final native VecNLETimeSpaceNodeSPtr_clear(JLcom/bytedance/ies/nle/editor_jni/VecNLETimeSpaceNodeSPtr;)V
.end method

.method public static final native VecNLETimeSpaceNodeSPtr_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecNLETimeSpaceNodeSPtr;JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)V
.end method

.method public static final native VecNLETimeSpaceNodeSPtr_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLETimeSpaceNodeSPtr;IJLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)V
.end method

.method public static final native VecNLETimeSpaceNodeSPtr_doGet(JLcom/bytedance/ies/nle/editor_jni/VecNLETimeSpaceNodeSPtr;I)J
.end method

.method public static final native VecNLETimeSpaceNodeSPtr_doRemove(JLcom/bytedance/ies/nle/editor_jni/VecNLETimeSpaceNodeSPtr;I)J
.end method

.method public static final native VecNLETimeSpaceNodeSPtr_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VecNLETimeSpaceNodeSPtr;II)V
.end method

.method public static final native VecNLETimeSpaceNodeSPtr_doSet(JLcom/bytedance/ies/nle/editor_jni/VecNLETimeSpaceNodeSPtr;IJLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)J
.end method

.method public static final native VecNLETimeSpaceNodeSPtr_doSize(JLcom/bytedance/ies/nle/editor_jni/VecNLETimeSpaceNodeSPtr;)I
.end method

.method public static final native VecNLETimeSpaceNodeSPtr_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VecNLETimeSpaceNodeSPtr;)Z
.end method

.method public static final native VecNLETimeSpaceNodeSPtr_reserve(JLcom/bytedance/ies/nle/editor_jni/VecNLETimeSpaceNodeSPtr;J)V
.end method

.method public static final native VecNLETrackSPtrConst_capacity(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtrConst;)J
.end method

.method public static final native VecNLETrackSPtrConst_clear(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtrConst;)V
.end method

.method public static final native VecNLETrackSPtrConst_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtrConst;JLcom/bytedance/ies/nle/editor_jni/NLETrack;)V
.end method

.method public static final native VecNLETrackSPtrConst_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtrConst;IJLcom/bytedance/ies/nle/editor_jni/NLETrack;)V
.end method

.method public static final native VecNLETrackSPtrConst_doGet(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtrConst;I)J
.end method

.method public static final native VecNLETrackSPtrConst_doRemove(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtrConst;I)J
.end method

.method public static final native VecNLETrackSPtrConst_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtrConst;II)V
.end method

.method public static final native VecNLETrackSPtrConst_doSet(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtrConst;IJLcom/bytedance/ies/nle/editor_jni/NLETrack;)J
.end method

.method public static final native VecNLETrackSPtrConst_doSize(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtrConst;)I
.end method

.method public static final native VecNLETrackSPtrConst_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtrConst;)Z
.end method

.method public static final native VecNLETrackSPtrConst_reserve(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtrConst;J)V
.end method

.method public static final native VecNLETrackSPtr_capacity(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtr;)J
.end method

.method public static final native VecNLETrackSPtr_clear(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtr;)V
.end method

.method public static final native VecNLETrackSPtr_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtr;JLcom/bytedance/ies/nle/editor_jni/NLETrack;)V
.end method

.method public static final native VecNLETrackSPtr_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtr;IJLcom/bytedance/ies/nle/editor_jni/NLETrack;)V
.end method

.method public static final native VecNLETrackSPtr_doGet(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtr;I)J
.end method

.method public static final native VecNLETrackSPtr_doRemove(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtr;I)J
.end method

.method public static final native VecNLETrackSPtr_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtr;II)V
.end method

.method public static final native VecNLETrackSPtr_doSet(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtr;IJLcom/bytedance/ies/nle/editor_jni/NLETrack;)J
.end method

.method public static final native VecNLETrackSPtr_doSize(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtr;)I
.end method

.method public static final native VecNLETrackSPtr_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtr;)Z
.end method

.method public static final native VecNLETrackSPtr_reserve(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtr;J)V
.end method

.method public static final native VecNLETrackSlotSPtrConst_capacity(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtrConst;)J
.end method

.method public static final native VecNLETrackSlotSPtrConst_clear(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtrConst;)V
.end method

.method public static final native VecNLETrackSlotSPtrConst_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtrConst;JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V
.end method

.method public static final native VecNLETrackSlotSPtrConst_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtrConst;IJLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V
.end method

.method public static final native VecNLETrackSlotSPtrConst_doGet(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtrConst;I)J
.end method

.method public static final native VecNLETrackSlotSPtrConst_doRemove(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtrConst;I)J
.end method

.method public static final native VecNLETrackSlotSPtrConst_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtrConst;II)V
.end method

.method public static final native VecNLETrackSlotSPtrConst_doSet(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtrConst;IJLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J
.end method

.method public static final native VecNLETrackSlotSPtrConst_doSize(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtrConst;)I
.end method

.method public static final native VecNLETrackSlotSPtrConst_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtrConst;)Z
.end method

.method public static final native VecNLETrackSlotSPtrConst_reserve(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtrConst;J)V
.end method

.method public static final native VecNLETrackSlotSPtr_capacity(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;)J
.end method

.method public static final native VecNLETrackSlotSPtr_clear(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;)V
.end method

.method public static final native VecNLETrackSlotSPtr_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V
.end method

.method public static final native VecNLETrackSlotSPtr_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;IJLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V
.end method

.method public static final native VecNLETrackSlotSPtr_doGet(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;I)J
.end method

.method public static final native VecNLETrackSlotSPtr_doRemove(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;I)J
.end method

.method public static final native VecNLETrackSlotSPtr_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;II)V
.end method

.method public static final native VecNLETrackSlotSPtr_doSet(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;IJLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J
.end method

.method public static final native VecNLETrackSlotSPtr_doSize(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;)I
.end method

.method public static final native VecNLETrackSlotSPtr_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;)Z
.end method

.method public static final native VecNLETrackSlotSPtr_reserve(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;J)V
.end method

.method public static final native VecNLETrackType_capacity(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackType;)J
.end method

.method public static final native VecNLETrackType_clear(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackType;)V
.end method

.method public static final native VecNLETrackType_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackType;I)V
.end method

.method public static final native VecNLETrackType_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackType;II)V
.end method

.method public static final native VecNLETrackType_doGet(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackType;I)I
.end method

.method public static final native VecNLETrackType_doRemove(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackType;I)I
.end method

.method public static final native VecNLETrackType_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackType;II)V
.end method

.method public static final native VecNLETrackType_doSet(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackType;II)I
.end method

.method public static final native VecNLETrackType_doSize(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackType;)I
.end method

.method public static final native VecNLETrackType_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackType;)Z
.end method

.method public static final native VecNLETrackType_reserve(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackType;J)V
.end method

.method public static final native VecNLEVideoAnimationSPtrConst_capacity(JLcom/bytedance/ies/nle/editor_jni/VecNLEVideoAnimationSPtrConst;)J
.end method

.method public static final native VecNLEVideoAnimationSPtrConst_clear(JLcom/bytedance/ies/nle/editor_jni/VecNLEVideoAnimationSPtrConst;)V
.end method

.method public static final native VecNLEVideoAnimationSPtrConst_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecNLEVideoAnimationSPtrConst;JLcom/bytedance/ies/nle/editor_jni/NLEVideoAnimation;)V
.end method

.method public static final native VecNLEVideoAnimationSPtrConst_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLEVideoAnimationSPtrConst;IJLcom/bytedance/ies/nle/editor_jni/NLEVideoAnimation;)V
.end method

.method public static final native VecNLEVideoAnimationSPtrConst_doGet(JLcom/bytedance/ies/nle/editor_jni/VecNLEVideoAnimationSPtrConst;I)J
.end method

.method public static final native VecNLEVideoAnimationSPtrConst_doRemove(JLcom/bytedance/ies/nle/editor_jni/VecNLEVideoAnimationSPtrConst;I)J
.end method

.method public static final native VecNLEVideoAnimationSPtrConst_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VecNLEVideoAnimationSPtrConst;II)V
.end method

.method public static final native VecNLEVideoAnimationSPtrConst_doSet(JLcom/bytedance/ies/nle/editor_jni/VecNLEVideoAnimationSPtrConst;IJLcom/bytedance/ies/nle/editor_jni/NLEVideoAnimation;)J
.end method

.method public static final native VecNLEVideoAnimationSPtrConst_doSize(JLcom/bytedance/ies/nle/editor_jni/VecNLEVideoAnimationSPtrConst;)I
.end method

.method public static final native VecNLEVideoAnimationSPtrConst_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VecNLEVideoAnimationSPtrConst;)Z
.end method

.method public static final native VecNLEVideoAnimationSPtrConst_reserve(JLcom/bytedance/ies/nle/editor_jni/VecNLEVideoAnimationSPtrConst;J)V
.end method

.method public static final native VecNLEVideoAnimationSPtr_capacity(JLcom/bytedance/ies/nle/editor_jni/VecNLEVideoAnimationSPtr;)J
.end method

.method public static final native VecNLEVideoAnimationSPtr_clear(JLcom/bytedance/ies/nle/editor_jni/VecNLEVideoAnimationSPtr;)V
.end method

.method public static final native VecNLEVideoAnimationSPtr_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecNLEVideoAnimationSPtr;JLcom/bytedance/ies/nle/editor_jni/NLEVideoAnimation;)V
.end method

.method public static final native VecNLEVideoAnimationSPtr_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLEVideoAnimationSPtr;IJLcom/bytedance/ies/nle/editor_jni/NLEVideoAnimation;)V
.end method

.method public static final native VecNLEVideoAnimationSPtr_doGet(JLcom/bytedance/ies/nle/editor_jni/VecNLEVideoAnimationSPtr;I)J
.end method

.method public static final native VecNLEVideoAnimationSPtr_doRemove(JLcom/bytedance/ies/nle/editor_jni/VecNLEVideoAnimationSPtr;I)J
.end method

.method public static final native VecNLEVideoAnimationSPtr_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VecNLEVideoAnimationSPtr;II)V
.end method

.method public static final native VecNLEVideoAnimationSPtr_doSet(JLcom/bytedance/ies/nle/editor_jni/VecNLEVideoAnimationSPtr;IJLcom/bytedance/ies/nle/editor_jni/NLEVideoAnimation;)J
.end method

.method public static final native VecNLEVideoAnimationSPtr_doSize(JLcom/bytedance/ies/nle/editor_jni/VecNLEVideoAnimationSPtr;)I
.end method

.method public static final native VecNLEVideoAnimationSPtr_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VecNLEVideoAnimationSPtr;)Z
.end method

.method public static final native VecNLEVideoAnimationSPtr_reserve(JLcom/bytedance/ies/nle/editor_jni/VecNLEVideoAnimationSPtr;J)V
.end method

.method public static final native VecNLEVideoEffectSPtrConst_capacity(JLcom/bytedance/ies/nle/editor_jni/VecNLEVideoEffectSPtrConst;)J
.end method

.method public static final native VecNLEVideoEffectSPtrConst_clear(JLcom/bytedance/ies/nle/editor_jni/VecNLEVideoEffectSPtrConst;)V
.end method

.method public static final native VecNLEVideoEffectSPtrConst_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecNLEVideoEffectSPtrConst;JLcom/bytedance/ies/nle/editor_jni/NLEVideoEffect;)V
.end method

.method public static final native VecNLEVideoEffectSPtrConst_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLEVideoEffectSPtrConst;IJLcom/bytedance/ies/nle/editor_jni/NLEVideoEffect;)V
.end method

.method public static final native VecNLEVideoEffectSPtrConst_doGet(JLcom/bytedance/ies/nle/editor_jni/VecNLEVideoEffectSPtrConst;I)J
.end method

.method public static final native VecNLEVideoEffectSPtrConst_doRemove(JLcom/bytedance/ies/nle/editor_jni/VecNLEVideoEffectSPtrConst;I)J
.end method

.method public static final native VecNLEVideoEffectSPtrConst_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VecNLEVideoEffectSPtrConst;II)V
.end method

.method public static final native VecNLEVideoEffectSPtrConst_doSet(JLcom/bytedance/ies/nle/editor_jni/VecNLEVideoEffectSPtrConst;IJLcom/bytedance/ies/nle/editor_jni/NLEVideoEffect;)J
.end method

.method public static final native VecNLEVideoEffectSPtrConst_doSize(JLcom/bytedance/ies/nle/editor_jni/VecNLEVideoEffectSPtrConst;)I
.end method

.method public static final native VecNLEVideoEffectSPtrConst_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VecNLEVideoEffectSPtrConst;)Z
.end method

.method public static final native VecNLEVideoEffectSPtrConst_reserve(JLcom/bytedance/ies/nle/editor_jni/VecNLEVideoEffectSPtrConst;J)V
.end method

.method public static final native VecNLEVideoEffectSPtr_capacity(JLcom/bytedance/ies/nle/editor_jni/VecNLEVideoEffectSPtr;)J
.end method

.method public static final native VecNLEVideoEffectSPtr_clear(JLcom/bytedance/ies/nle/editor_jni/VecNLEVideoEffectSPtr;)V
.end method

.method public static final native VecNLEVideoEffectSPtr_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecNLEVideoEffectSPtr;JLcom/bytedance/ies/nle/editor_jni/NLEVideoEffect;)V
.end method

.method public static final native VecNLEVideoEffectSPtr_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLEVideoEffectSPtr;IJLcom/bytedance/ies/nle/editor_jni/NLEVideoEffect;)V
.end method

.method public static final native VecNLEVideoEffectSPtr_doGet(JLcom/bytedance/ies/nle/editor_jni/VecNLEVideoEffectSPtr;I)J
.end method

.method public static final native VecNLEVideoEffectSPtr_doRemove(JLcom/bytedance/ies/nle/editor_jni/VecNLEVideoEffectSPtr;I)J
.end method

.method public static final native VecNLEVideoEffectSPtr_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VecNLEVideoEffectSPtr;II)V
.end method

.method public static final native VecNLEVideoEffectSPtr_doSet(JLcom/bytedance/ies/nle/editor_jni/VecNLEVideoEffectSPtr;IJLcom/bytedance/ies/nle/editor_jni/NLEVideoEffect;)J
.end method

.method public static final native VecNLEVideoEffectSPtr_doSize(JLcom/bytedance/ies/nle/editor_jni/VecNLEVideoEffectSPtr;)I
.end method

.method public static final native VecNLEVideoEffectSPtr_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VecNLEVideoEffectSPtr;)Z
.end method

.method public static final native VecNLEVideoEffectSPtr_reserve(JLcom/bytedance/ies/nle/editor_jni/VecNLEVideoEffectSPtr;J)V
.end method

.method public static final native VecString_capacity(JLcom/bytedance/ies/nle/editor_jni/VecString;)J
.end method

.method public static final native VecString_clear(JLcom/bytedance/ies/nle/editor_jni/VecString;)V
.end method

.method public static final native VecString_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecString;Ljava/lang/String;)V
.end method

.method public static final native VecString_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecString;ILjava/lang/String;)V
.end method

.method public static final native VecString_doGet(JLcom/bytedance/ies/nle/editor_jni/VecString;I)Ljava/lang/String;
.end method

.method public static final native VecString_doRemove(JLcom/bytedance/ies/nle/editor_jni/VecString;I)Ljava/lang/String;
.end method

.method public static final native VecString_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VecString;II)V
.end method

.method public static final native VecString_doSet(JLcom/bytedance/ies/nle/editor_jni/VecString;ILjava/lang/String;)Ljava/lang/String;
.end method

.method public static final native VecString_doSize(JLcom/bytedance/ies/nle/editor_jni/VecString;)I
.end method

.method public static final native VecString_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VecString;)Z
.end method

.method public static final native VecString_reserve(JLcom/bytedance/ies/nle/editor_jni/VecString;J)V
.end method

.method public static final native delete_ChangeBits(J)V
.end method

.method public static final native delete_INLEMonitor(J)V
.end method

.method public static final native delete_MapStrNLENodeSPtr(J)V
.end method

.method public static final native delete_MapStrNLENodeSPtrConst(J)V
.end method

.method public static final native delete_MapStrNLENodeSPtrConst_Iterator(J)V
.end method

.method public static final native delete_MapStrNLENodeSPtr_Iterator(J)V
.end method

.method public static final native delete_MapStrStr(J)V
.end method

.method public static final native delete_MapStrStr_Iterator(J)V
.end method

.method public static final native delete_NLEAIMatting(J)V
.end method

.method public static final native delete_NLEAutoFillFrame(J)V
.end method

.method public static final native delete_NLEBranch(J)V
.end method

.method public static final native delete_NLEBranchListener(J)V
.end method

.method public static final native delete_NLEChangeListener(J)V
.end method

.method public static final native delete_NLECherEffect(J)V
.end method

.method public static final native delete_NLEChromaChannel(J)V
.end method

.method public static final native delete_NLECommit(J)V
.end method

.method public static final native delete_NLECurveActionBeam(J)V
.end method

.method public static final native delete_NLECurveSpeedCalculator(J)V
.end method

.method public static final native delete_NLEEditor(J)V
.end method

.method public static final native delete_NLEEditorListener(J)V
.end method

.method public static final native delete_NLEFilter(J)V
.end method

.method public static final native delete_NLEFilterName(J)V
.end method

.method public static final native delete_NLEInstantMode(J)V
.end method

.method public static final native delete_NLEKeyFrameTransientExtrakey(J)V
.end method

.method public static final native delete_NLEKeyframeGraphValue(J)V
.end method

.method public static final native delete_NLELogger(J)V
.end method

.method public static final native delete_NLELoggerFunc(J)V
.end method

.method public static final native delete_NLELoggerListener(J)V
.end method

.method public static final native delete_NLELokiResourceProtocol(J)V
.end method

.method public static final native delete_NLEMVExternalAlgorithmResult(J)V
.end method

.method public static final native delete_NLEManifest(J)V
.end method

.method public static final native delete_NLEMask(J)V
.end method

.method public static final native delete_NLEMatrix(J)V
.end method

.method public static final native delete_NLEMeasure(J)V
.end method

.method public static final native delete_NLEMediaResourceProtocol(J)V
.end method

.method public static final native delete_NLEModel(J)V
.end method

.method public static final native delete_NLEMonitor(J)V
.end method

.method public static final native delete_NLEMonitorParamBuilder(J)V
.end method

.method public static final native delete_NLENode(J)V
.end method

.method public static final native delete_NLENodeGroup(J)V
.end method

.method public static final native delete_NLENoiseReduction(J)V
.end method

.method public static final native delete_NLEPoint(J)V
.end method

.method public static final native delete_NLEResourceAV(J)V
.end method

.method public static final native delete_NLEResourceFetchCallback(J)V
.end method

.method public static final native delete_NLEResourceGIF(J)V
.end method

.method public static final native delete_NLEResourceNode(J)V
.end method

.method public static final native delete_NLEResourceProtocol(J)V
.end method

.method public static final native delete_NLEResourceSynchronizer(J)V
.end method

.method public static final native delete_NLESegment(J)V
.end method

.method public static final native delete_NLESegmentAIMatting(J)V
.end method

.method public static final native delete_NLESegmentAudio(J)V
.end method

.method public static final native delete_NLESegmentAudioFadeFilter(J)V
.end method

.method public static final native delete_NLESegmentAudioLoudnessBalanceFilter(J)V
.end method

.method public static final native delete_NLESegmentAudioSamiFilter(J)V
.end method

.method public static final native delete_NLESegmentAudioVolumeFilter(J)V
.end method

.method public static final native delete_NLESegmentAutoFillFrame(J)V
.end method

.method public static final native delete_NLESegmentBrickEffect(J)V
.end method

.method public static final native delete_NLESegmentCherEffect(J)V
.end method

.method public static final native delete_NLESegmentChromaChannel(J)V
.end method

.method public static final native delete_NLESegmentComposerFilter(J)V
.end method

.method public static final native delete_NLESegmentEffect(J)V
.end method

.method public static final native delete_NLESegmentEffectSticker(J)V
.end method

.method public static final native delete_NLESegmentEmojiSticker(J)V
.end method

.method public static final native delete_NLESegmentFilter(J)V
.end method

.method public static final native delete_NLESegmentGIF(J)V
.end method

.method public static final native delete_NLESegmentHDRFilter(J)V
.end method

.method public static final native delete_NLESegmentHSLFilter(J)V
.end method

.method public static final native delete_NLESegmentImage(J)V
.end method

.method public static final native delete_NLESegmentImageSticker(J)V
.end method

.method public static final native delete_NLESegmentImageVideoAnimation(J)V
.end method

.method public static final native delete_NLESegmentInfoSticker(J)V
.end method

.method public static final native delete_NLESegmentIntegrationFilter(J)V
.end method

.method public static final native delete_NLESegmentMV(J)V
.end method

.method public static final native delete_NLESegmentMask(J)V
.end method

.method public static final native delete_NLESegmentPlay(J)V
.end method

.method public static final native delete_NLESegmentSticker(J)V
.end method

.method public static final native delete_NLESegmentSubtitleSticker(J)V
.end method

.method public static final native delete_NLESegmentTextSticker(J)V
.end method

.method public static final native delete_NLESegmentTextTemplate(J)V
.end method

.method public static final native delete_NLESegmentTimeEffect(J)V
.end method

.method public static final native delete_NLESegmentTransition(J)V
.end method

.method public static final native delete_NLESegmentVideo(J)V
.end method

.method public static final native delete_NLESegmentVideoAnimation(J)V
.end method

.method public static final native delete_NLESetting(J)V
.end method

.method public static final native delete_NLESize(J)V
.end method

.method public static final native delete_NLESizeUtils(J)V
.end method

.method public static final native delete_NLEStringFloatPair(J)V
.end method

.method public static final native delete_NLEStyCanvas(J)V
.end method

.method public static final native delete_NLEStyClip(J)V
.end method

.method public static final native delete_NLEStyCrop(J)V
.end method

.method public static final native delete_NLEStyStickerAnim(J)V
.end method

.method public static final native delete_NLEStyText(J)V
.end method

.method public static final native delete_NLETextTemplateClip(J)V
.end method

.method public static final native delete_NLETimeEffect(J)V
.end method

.method public static final native delete_NLETimeSpaceNode(J)V
.end method

.method public static final native delete_NLETrack(J)V
.end method

.method public static final native delete_NLETrackAlgorithm(J)V
.end method

.method public static final native delete_NLETrackMV(J)V
.end method

.method public static final native delete_NLETrackSlot(J)V
.end method

.method public static final native delete_NLEUrlResourceProtocol(J)V
.end method

.method public static final native delete_NLEVideoAnimation(J)V
.end method

.method public static final native delete_NLEVideoEffect(J)V
.end method

.method public static final native delete_NLEVideoFrameModel(J)V
.end method

.method public static final native delete_PairIntInt(J)V
.end method

.method public static final native delete_PairNLEPoint2NLEPoint(J)V
.end method

.method public static final native delete_PairSlotSlot(J)V
.end method

.method public static final native delete_PairUIntUInt(J)V
.end method

.method public static final native delete_UnorderedMapStrStr(J)V
.end method

.method public static final native delete_UnorderedMapStrStr_Iterator(J)V
.end method

.method public static final native delete_VecChar(J)V
.end method

.method public static final native delete_VecDouble(J)V
.end method

.method public static final native delete_VecFloat(J)V
.end method

.method public static final native delete_VecInt(J)V
.end method

.method public static final native delete_VecLongLong(J)V
.end method

.method public static final native delete_VecNLECherEffectSPtr(J)V
.end method

.method public static final native delete_VecNLECherEffectSPtrConst(J)V
.end method

.method public static final native delete_VecNLEChromaChannelSPtr(J)V
.end method

.method public static final native delete_VecNLEChromaChannelSPtrConst(J)V
.end method

.method public static final native delete_VecNLECommitSPtr(J)V
.end method

.method public static final native delete_VecNLECommitSPtrConst(J)V
.end method

.method public static final native delete_VecNLEFilterSPtr(J)V
.end method

.method public static final native delete_VecNLEFilterSPtrConst(J)V
.end method

.method public static final native delete_VecNLEKeyframeGraphValue(J)V
.end method

.method public static final native delete_VecNLEMVExternalAlgorithmResultSPtr(J)V
.end method

.method public static final native delete_VecNLEMVExternalAlgorithmResultSPtrConst(J)V
.end method

.method public static final native delete_VecNLEMaskSPtr(J)V
.end method

.method public static final native delete_VecNLEMaskSPtrConst(J)V
.end method

.method public static final native delete_VecNLENoiseReductionSPtr(J)V
.end method

.method public static final native delete_VecNLENoiseReductionSPtrConst(J)V
.end method

.method public static final native delete_VecNLEPointSPtr(J)V
.end method

.method public static final native delete_VecNLEPointSPtrConst(J)V
.end method

.method public static final native delete_VecNLEResourceNodeSPtr(J)V
.end method

.method public static final native delete_VecNLEResourceNodeSPtrConst(J)V
.end method

.method public static final native delete_VecNLESegmentEffectStickerSPtr(J)V
.end method

.method public static final native delete_VecNLESegmentEffectStickerSPtrConst(J)V
.end method

.method public static final native delete_VecNLESegmentSPtr(J)V
.end method

.method public static final native delete_VecNLESegmentSPtrConst(J)V
.end method

.method public static final native delete_VecNLEStringFloatPairSPtr(J)V
.end method

.method public static final native delete_VecNLEStringFloatPairSPtrConst(J)V
.end method

.method public static final native delete_VecNLEStyStickerAnim(J)V
.end method

.method public static final native delete_VecNLETextTemplateClipSPtr(J)V
.end method

.method public static final native delete_VecNLETextTemplateClipSPtrConst(J)V
.end method

.method public static final native delete_VecNLETimeEffectSPtr(J)V
.end method

.method public static final native delete_VecNLETimeEffectSPtrConst(J)V
.end method

.method public static final native delete_VecNLETimeSpaceNodeSPtr(J)V
.end method

.method public static final native delete_VecNLETimeSpaceNodeSPtrConst(J)V
.end method

.method public static final native delete_VecNLETrackSPtr(J)V
.end method

.method public static final native delete_VecNLETrackSPtrConst(J)V
.end method

.method public static final native delete_VecNLETrackSlotSPtr(J)V
.end method

.method public static final native delete_VecNLETrackSlotSPtrConst(J)V
.end method

.method public static final native delete_VecNLETrackType(J)V
.end method

.method public static final native delete_VecNLEVideoAnimationSPtr(J)V
.end method

.method public static final native delete_VecNLEVideoAnimationSPtrConst(J)V
.end method

.method public static final native delete_VecNLEVideoEffectSPtr(J)V
.end method

.method public static final native delete_VecNLEVideoEffectSPtrConst(J)V
.end method

.method public static final native delete_VecString(J)V
.end method

.method public static final native new_ChangeBits()J
.end method

.method public static final native new_INLEMonitor()J
.end method

.method public static final native new_MapStrNLENodeSPtrConst__SWIG_0()J
.end method

.method public static final native new_MapStrNLENodeSPtrConst__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtrConst;)J
.end method

.method public static final native new_MapStrNLENodeSPtr__SWIG_0()J
.end method

.method public static final native new_MapStrNLENodeSPtr__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;)J
.end method

.method public static final native new_MapStrStr__SWIG_0()J
.end method

.method public static final native new_MapStrStr__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/MapStrStr;)J
.end method

.method public static final native new_NLEAIMatting()J
.end method

.method public static final native new_NLEAutoFillFrame()J
.end method

.method public static final native new_NLEBranch()J
.end method

.method public static final native new_NLEBranchListener()J
.end method

.method public static final native new_NLEChangeListener()J
.end method

.method public static final native new_NLECherEffect()J
.end method

.method public static final native new_NLEChromaChannel()J
.end method

.method public static final native new_NLECommit()J
.end method

.method public static final native new_NLECurveActionBeam()J
.end method

.method public static final native new_NLECurveSpeedCalculator(JLcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;)J
.end method

.method public static final native new_NLEEditor()J
.end method

.method public static final native new_NLEEditorListener()J
.end method

.method public static final native new_NLEFilter()J
.end method

.method public static final native new_NLEFilterName()J
.end method

.method public static final native new_NLEInstantMode()J
.end method

.method public static final native new_NLEKeyFrameTransientExtrakey()J
.end method

.method public static final native new_NLEKeyframeGraphValue()J
.end method

.method public static final native new_NLELogger()J
.end method

.method public static final native new_NLELoggerListener()J
.end method

.method public static final native new_NLELokiResourceProtocol__SWIG_0(Ljava/lang/String;)J
.end method

.method public static final native new_NLELokiResourceProtocol__SWIG_1(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public static final native new_NLEMVExternalAlgorithmResult()J
.end method

.method public static final native new_NLEManifest()J
.end method

.method public static final native new_NLEMask()J
.end method

.method public static final native new_NLEMatrix()J
.end method

.method public static final native new_NLEMeasure()J
.end method

.method public static final native new_NLEMediaResourceProtocol__SWIG_0(Ljava/lang/String;)J
.end method

.method public static final native new_NLEMediaResourceProtocol__SWIG_1(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public static final native new_NLEModel()J
.end method

.method public static final native new_NLEMonitor()J
.end method

.method public static final native new_NLEMonitorParamBuilder()J
.end method

.method public static final native new_NLENodeGroup()J
.end method

.method public static final native new_NLENoiseReduction()J
.end method

.method public static final native new_NLEPoint()J
.end method

.method public static final native new_NLEResourceAV()J
.end method

.method public static final native new_NLEResourceFetchCallback()J
.end method

.method public static final native new_NLEResourceGIF()J
.end method

.method public static final native new_NLEResourceNode()J
.end method

.method public static final native new_NLEResourceSynchronizer()J
.end method

.method public static final native new_NLESegmentAIMatting()J
.end method

.method public static final native new_NLESegmentAudio()J
.end method

.method public static final native new_NLESegmentAudioFadeFilter()J
.end method

.method public static final native new_NLESegmentAudioLoudnessBalanceFilter()J
.end method

.method public static final native new_NLESegmentAudioSamiFilter()J
.end method

.method public static final native new_NLESegmentAudioVolumeFilter()J
.end method

.method public static final native new_NLESegmentAutoFillFrame()J
.end method

.method public static final native new_NLESegmentBrickEffect()J
.end method

.method public static final native new_NLESegmentCherEffect()J
.end method

.method public static final native new_NLESegmentChromaChannel()J
.end method

.method public static final native new_NLESegmentComposerFilter()J
.end method

.method public static final native new_NLESegmentEffect()J
.end method

.method public static final native new_NLESegmentEffectSticker()J
.end method

.method public static final native new_NLESegmentEmojiSticker()J
.end method

.method public static final native new_NLESegmentFilter()J
.end method

.method public static final native new_NLESegmentGIF()J
.end method

.method public static final native new_NLESegmentHDRFilter()J
.end method

.method public static final native new_NLESegmentHSLFilter()J
.end method

.method public static final native new_NLESegmentImage()J
.end method

.method public static final native new_NLESegmentImageSticker()J
.end method

.method public static final native new_NLESegmentImageVideoAnimation()J
.end method

.method public static final native new_NLESegmentInfoSticker()J
.end method

.method public static final native new_NLESegmentIntegrationFilter()J
.end method

.method public static final native new_NLESegmentMV()J
.end method

.method public static final native new_NLESegmentMask()J
.end method

.method public static final native new_NLESegmentPlay()J
.end method

.method public static final native new_NLESegmentSticker()J
.end method

.method public static final native new_NLESegmentSubtitleSticker()J
.end method

.method public static final native new_NLESegmentTextSticker__SWIG_0()J
.end method

.method public static final native new_NLESegmentTextSticker__SWIG_1(Ljava/lang/String;)J
.end method

.method public static final native new_NLESegmentTextTemplate()J
.end method

.method public static final native new_NLESegmentTimeEffect()J
.end method

.method public static final native new_NLESegmentTransition()J
.end method

.method public static final native new_NLESegmentVideo()J
.end method

.method public static final native new_NLESegmentVideoAnimation()J
.end method

.method public static final native new_NLESetting()J
.end method

.method public static final native new_NLESize(FF)J
.end method

.method public static final native new_NLESizeUtils()J
.end method

.method public static final native new_NLEStringFloatPair()J
.end method

.method public static final native new_NLEStyCanvas()J
.end method

.method public static final native new_NLEStyClip()J
.end method

.method public static final native new_NLEStyCrop()J
.end method

.method public static final native new_NLEStyStickerAnim()J
.end method

.method public static final native new_NLEStyText__SWIG_0()J
.end method

.method public static final native new_NLEStyText__SWIG_1(Ljava/lang/String;)J
.end method

.method public static final native new_NLETextTemplateClip()J
.end method

.method public static final native new_NLETimeEffect()J
.end method

.method public static final native new_NLETimeSpaceNode()J
.end method

.method public static final native new_NLETrack()J
.end method

.method public static final native new_NLETrackAlgorithm()J
.end method

.method public static final native new_NLETrackMV()J
.end method

.method public static final native new_NLETrackSlot()J
.end method

.method public static final native new_NLEUrlResourceProtocol(Ljava/lang/String;)J
.end method

.method public static final native new_NLEVideoAnimation()J
.end method

.method public static final native new_NLEVideoEffect()J
.end method

.method public static final native new_NLEVideoFrameModel()J
.end method

.method public static final native new_PairIntInt__SWIG_0()J
.end method

.method public static final native new_PairIntInt__SWIG_1(II)J
.end method

.method public static final native new_PairIntInt__SWIG_2(JLcom/bytedance/ies/nle/editor_jni/PairIntInt;)J
.end method

.method public static final native new_PairNLEPoint2NLEPoint__SWIG_0()J
.end method

.method public static final native new_PairNLEPoint2NLEPoint__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;JLcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;)J
.end method

.method public static final native new_PairNLEPoint2NLEPoint__SWIG_2(JLcom/bytedance/ies/nle/editor_jni/PairNLEPoint2NLEPoint;)J
.end method

.method public static final native new_PairSlotSlot__SWIG_0()J
.end method

.method public static final native new_PairSlotSlot__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J
.end method

.method public static final native new_PairSlotSlot__SWIG_2(JLcom/bytedance/ies/nle/editor_jni/PairSlotSlot;)J
.end method

.method public static final native new_PairUIntUInt__SWIG_0()J
.end method

.method public static final native new_PairUIntUInt__SWIG_1(JJ)J
.end method

.method public static final native new_PairUIntUInt__SWIG_2(JLcom/bytedance/ies/nle/editor_jni/PairUIntUInt;)J
.end method

.method public static final native new_UnorderedMapStrStr__SWIG_0()J
.end method

.method public static final native new_UnorderedMapStrStr__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/UnorderedMapStrStr;)J
.end method

.method public static final native new_VecChar__SWIG_0()J
.end method

.method public static final native new_VecChar__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecChar;)J
.end method

.method public static final native new_VecChar__SWIG_2(IC)J
.end method

.method public static final native new_VecDouble__SWIG_0()J
.end method

.method public static final native new_VecDouble__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecDouble;)J
.end method

.method public static final native new_VecDouble__SWIG_2(ID)J
.end method

.method public static final native new_VecFloat__SWIG_0()J
.end method

.method public static final native new_VecFloat__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecFloat;)J
.end method

.method public static final native new_VecFloat__SWIG_2(IF)J
.end method

.method public static final native new_VecInt__SWIG_0()J
.end method

.method public static final native new_VecInt__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecInt;)J
.end method

.method public static final native new_VecInt__SWIG_2(II)J
.end method

.method public static final native new_VecLongLong__SWIG_0()J
.end method

.method public static final native new_VecLongLong__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecLongLong;)J
.end method

.method public static final native new_VecLongLong__SWIG_2(IJ)J
.end method

.method public static final native new_VecNLECherEffectSPtrConst__SWIG_0()J
.end method

.method public static final native new_VecNLECherEffectSPtrConst__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtrConst;)J
.end method

.method public static final native new_VecNLECherEffectSPtrConst__SWIG_2(IJLcom/bytedance/ies/nle/editor_jni/NLECherEffect;)J
.end method

.method public static final native new_VecNLECherEffectSPtr__SWIG_0()J
.end method

.method public static final native new_VecNLECherEffectSPtr__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;)J
.end method

.method public static final native new_VecNLECherEffectSPtr__SWIG_2(IJLcom/bytedance/ies/nle/editor_jni/NLECherEffect;)J
.end method

.method public static final native new_VecNLEChromaChannelSPtrConst__SWIG_0()J
.end method

.method public static final native new_VecNLEChromaChannelSPtrConst__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLEChromaChannelSPtrConst;)J
.end method

.method public static final native new_VecNLEChromaChannelSPtrConst__SWIG_2(IJLcom/bytedance/ies/nle/editor_jni/NLEChromaChannel;)J
.end method

.method public static final native new_VecNLEChromaChannelSPtr__SWIG_0()J
.end method

.method public static final native new_VecNLEChromaChannelSPtr__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLEChromaChannelSPtr;)J
.end method

.method public static final native new_VecNLEChromaChannelSPtr__SWIG_2(IJLcom/bytedance/ies/nle/editor_jni/NLEChromaChannel;)J
.end method

.method public static final native new_VecNLECommitSPtrConst__SWIG_0()J
.end method

.method public static final native new_VecNLECommitSPtrConst__SWIG_1(JJLcom/bytedance/ies/nle/editor_jni/NLECommit;)J
.end method

.method public static final native new_VecNLECommitSPtrConst__SWIG_2(J)J
.end method

.method public static final native new_VecNLECommitSPtrConst__SWIG_3(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtrConst;)J
.end method

.method public static final native new_VecNLECommitSPtr__SWIG_0()J
.end method

.method public static final native new_VecNLECommitSPtr__SWIG_1(JJLcom/bytedance/ies/nle/editor_jni/NLECommit;)J
.end method

.method public static final native new_VecNLECommitSPtr__SWIG_2(J)J
.end method

.method public static final native new_VecNLECommitSPtr__SWIG_3(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;)J
.end method

.method public static final native new_VecNLEFilterSPtrConst__SWIG_0()J
.end method

.method public static final native new_VecNLEFilterSPtrConst__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLEFilterSPtrConst;)J
.end method

.method public static final native new_VecNLEFilterSPtrConst__SWIG_2(IJLcom/bytedance/ies/nle/editor_jni/NLEFilter;)J
.end method

.method public static final native new_VecNLEFilterSPtr__SWIG_0()J
.end method

.method public static final native new_VecNLEFilterSPtr__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLEFilterSPtr;)J
.end method

.method public static final native new_VecNLEFilterSPtr__SWIG_2(IJLcom/bytedance/ies/nle/editor_jni/NLEFilter;)J
.end method

.method public static final native new_VecNLEKeyframeGraphValue__SWIG_0()J
.end method

.method public static final native new_VecNLEKeyframeGraphValue__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLEKeyframeGraphValue;)J
.end method

.method public static final native new_VecNLEKeyframeGraphValue__SWIG_2(IJLcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphValue;)J
.end method

.method public static final native new_VecNLEMVExternalAlgorithmResultSPtrConst__SWIG_0()J
.end method

.method public static final native new_VecNLEMVExternalAlgorithmResultSPtrConst__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLEMVExternalAlgorithmResultSPtrConst;)J
.end method

.method public static final native new_VecNLEMVExternalAlgorithmResultSPtrConst__SWIG_2(IJLcom/bytedance/ies/nle/editor_jni/NLEMVExternalAlgorithmResult;)J
.end method

.method public static final native new_VecNLEMVExternalAlgorithmResultSPtr__SWIG_0()J
.end method

.method public static final native new_VecNLEMVExternalAlgorithmResultSPtr__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLEMVExternalAlgorithmResultSPtr;)J
.end method

.method public static final native new_VecNLEMVExternalAlgorithmResultSPtr__SWIG_2(IJLcom/bytedance/ies/nle/editor_jni/NLEMVExternalAlgorithmResult;)J
.end method

.method public static final native new_VecNLEMaskSPtrConst__SWIG_0()J
.end method

.method public static final native new_VecNLEMaskSPtrConst__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLEMaskSPtrConst;)J
.end method

.method public static final native new_VecNLEMaskSPtrConst__SWIG_2(IJLcom/bytedance/ies/nle/editor_jni/NLEMask;)J
.end method

.method public static final native new_VecNLEMaskSPtr__SWIG_0()J
.end method

.method public static final native new_VecNLEMaskSPtr__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLEMaskSPtr;)J
.end method

.method public static final native new_VecNLEMaskSPtr__SWIG_2(IJLcom/bytedance/ies/nle/editor_jni/NLEMask;)J
.end method

.method public static final native new_VecNLENoiseReductionSPtrConst__SWIG_0()J
.end method

.method public static final native new_VecNLENoiseReductionSPtrConst__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLENoiseReductionSPtrConst;)J
.end method

.method public static final native new_VecNLENoiseReductionSPtrConst__SWIG_2(IJLcom/bytedance/ies/nle/editor_jni/NLENoiseReduction;)J
.end method

.method public static final native new_VecNLENoiseReductionSPtr__SWIG_0()J
.end method

.method public static final native new_VecNLENoiseReductionSPtr__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLENoiseReductionSPtr;)J
.end method

.method public static final native new_VecNLENoiseReductionSPtr__SWIG_2(IJLcom/bytedance/ies/nle/editor_jni/NLENoiseReduction;)J
.end method

.method public static final native new_VecNLEPointSPtrConst__SWIG_0()J
.end method

.method public static final native new_VecNLEPointSPtrConst__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtrConst;)J
.end method

.method public static final native new_VecNLEPointSPtrConst__SWIG_2(IJLcom/bytedance/ies/nle/editor_jni/NLEPoint;)J
.end method

.method public static final native new_VecNLEPointSPtr__SWIG_0()J
.end method

.method public static final native new_VecNLEPointSPtr__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;)J
.end method

.method public static final native new_VecNLEPointSPtr__SWIG_2(IJLcom/bytedance/ies/nle/editor_jni/NLEPoint;)J
.end method

.method public static final native new_VecNLEResourceNodeSPtrConst__SWIG_0()J
.end method

.method public static final native new_VecNLEResourceNodeSPtrConst__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLEResourceNodeSPtrConst;)J
.end method

.method public static final native new_VecNLEResourceNodeSPtrConst__SWIG_2(IJLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)J
.end method

.method public static final native new_VecNLEResourceNodeSPtr__SWIG_0()J
.end method

.method public static final native new_VecNLEResourceNodeSPtr__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLEResourceNodeSPtr;)J
.end method

.method public static final native new_VecNLEResourceNodeSPtr__SWIG_2(IJLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)J
.end method

.method public static final native new_VecNLESegmentEffectStickerSPtrConst__SWIG_0()J
.end method

.method public static final native new_VecNLESegmentEffectStickerSPtrConst__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLESegmentEffectStickerSPtrConst;)J
.end method

.method public static final native new_VecNLESegmentEffectStickerSPtrConst__SWIG_2(IJLcom/bytedance/ies/nle/editor_jni/NLESegmentEffectSticker;)J
.end method

.method public static final native new_VecNLESegmentEffectStickerSPtr__SWIG_0()J
.end method

.method public static final native new_VecNLESegmentEffectStickerSPtr__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLESegmentEffectStickerSPtr;)J
.end method

.method public static final native new_VecNLESegmentEffectStickerSPtr__SWIG_2(IJLcom/bytedance/ies/nle/editor_jni/NLESegmentEffectSticker;)J
.end method

.method public static final native new_VecNLESegmentSPtrConst__SWIG_0()J
.end method

.method public static final native new_VecNLESegmentSPtrConst__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLESegmentSPtrConst;)J
.end method

.method public static final native new_VecNLESegmentSPtrConst__SWIG_2(IJLcom/bytedance/ies/nle/editor_jni/NLESegment;)J
.end method

.method public static final native new_VecNLESegmentSPtr__SWIG_0()J
.end method

.method public static final native new_VecNLESegmentSPtr__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLESegmentSPtr;)J
.end method

.method public static final native new_VecNLESegmentSPtr__SWIG_2(IJLcom/bytedance/ies/nle/editor_jni/NLESegment;)J
.end method

.method public static final native new_VecNLEStringFloatPairSPtrConst__SWIG_0()J
.end method

.method public static final native new_VecNLEStringFloatPairSPtrConst__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLEStringFloatPairSPtrConst;)J
.end method

.method public static final native new_VecNLEStringFloatPairSPtrConst__SWIG_2(IJLcom/bytedance/ies/nle/editor_jni/NLEStringFloatPair;)J
.end method

.method public static final native new_VecNLEStringFloatPairSPtr__SWIG_0()J
.end method

.method public static final native new_VecNLEStringFloatPairSPtr__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLEStringFloatPairSPtr;)J
.end method

.method public static final native new_VecNLEStringFloatPairSPtr__SWIG_2(IJLcom/bytedance/ies/nle/editor_jni/NLEStringFloatPair;)J
.end method

.method public static final native new_VecNLEStyStickerAnim__SWIG_0()J
.end method

.method public static final native new_VecNLEStyStickerAnim__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLEStyStickerAnim;)J
.end method

.method public static final native new_VecNLEStyStickerAnim__SWIG_2(IJLcom/bytedance/ies/nle/editor_jni/NLEStyStickerAnim;)J
.end method

.method public static final native new_VecNLETextTemplateClipSPtrConst__SWIG_0()J
.end method

.method public static final native new_VecNLETextTemplateClipSPtrConst__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLETextTemplateClipSPtrConst;)J
.end method

.method public static final native new_VecNLETextTemplateClipSPtrConst__SWIG_2(IJLcom/bytedance/ies/nle/editor_jni/NLETextTemplateClip;)J
.end method

.method public static final native new_VecNLETextTemplateClipSPtr__SWIG_0()J
.end method

.method public static final native new_VecNLETextTemplateClipSPtr__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLETextTemplateClipSPtr;)J
.end method

.method public static final native new_VecNLETextTemplateClipSPtr__SWIG_2(IJLcom/bytedance/ies/nle/editor_jni/NLETextTemplateClip;)J
.end method

.method public static final native new_VecNLETimeEffectSPtrConst__SWIG_0()J
.end method

.method public static final native new_VecNLETimeEffectSPtrConst__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLETimeEffectSPtrConst;)J
.end method

.method public static final native new_VecNLETimeEffectSPtrConst__SWIG_2(IJLcom/bytedance/ies/nle/editor_jni/NLETimeEffect;)J
.end method

.method public static final native new_VecNLETimeEffectSPtr__SWIG_0()J
.end method

.method public static final native new_VecNLETimeEffectSPtr__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLETimeEffectSPtr;)J
.end method

.method public static final native new_VecNLETimeEffectSPtr__SWIG_2(IJLcom/bytedance/ies/nle/editor_jni/NLETimeEffect;)J
.end method

.method public static final native new_VecNLETimeSpaceNodeSPtrConst__SWIG_0()J
.end method

.method public static final native new_VecNLETimeSpaceNodeSPtrConst__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLETimeSpaceNodeSPtrConst;)J
.end method

.method public static final native new_VecNLETimeSpaceNodeSPtrConst__SWIG_2(IJLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)J
.end method

.method public static final native new_VecNLETimeSpaceNodeSPtr__SWIG_0()J
.end method

.method public static final native new_VecNLETimeSpaceNodeSPtr__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLETimeSpaceNodeSPtr;)J
.end method

.method public static final native new_VecNLETimeSpaceNodeSPtr__SWIG_2(IJLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)J
.end method

.method public static final native new_VecNLETrackSPtrConst__SWIG_0()J
.end method

.method public static final native new_VecNLETrackSPtrConst__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtrConst;)J
.end method

.method public static final native new_VecNLETrackSPtrConst__SWIG_2(IJLcom/bytedance/ies/nle/editor_jni/NLETrack;)J
.end method

.method public static final native new_VecNLETrackSPtr__SWIG_0()J
.end method

.method public static final native new_VecNLETrackSPtr__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtr;)J
.end method

.method public static final native new_VecNLETrackSPtr__SWIG_2(IJLcom/bytedance/ies/nle/editor_jni/NLETrack;)J
.end method

.method public static final native new_VecNLETrackSlotSPtrConst__SWIG_0()J
.end method

.method public static final native new_VecNLETrackSlotSPtrConst__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtrConst;)J
.end method

.method public static final native new_VecNLETrackSlotSPtrConst__SWIG_2(IJLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J
.end method

.method public static final native new_VecNLETrackSlotSPtr__SWIG_0()J
.end method

.method public static final native new_VecNLETrackSlotSPtr__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;)J
.end method

.method public static final native new_VecNLETrackSlotSPtr__SWIG_2(IJLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J
.end method

.method public static final native new_VecNLETrackType__SWIG_0()J
.end method

.method public static final native new_VecNLETrackType__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLETrackType;)J
.end method

.method public static final native new_VecNLETrackType__SWIG_2(II)J
.end method

.method public static final native new_VecNLEVideoAnimationSPtrConst__SWIG_0()J
.end method

.method public static final native new_VecNLEVideoAnimationSPtrConst__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLEVideoAnimationSPtrConst;)J
.end method

.method public static final native new_VecNLEVideoAnimationSPtrConst__SWIG_2(IJLcom/bytedance/ies/nle/editor_jni/NLEVideoAnimation;)J
.end method

.method public static final native new_VecNLEVideoAnimationSPtr__SWIG_0()J
.end method

.method public static final native new_VecNLEVideoAnimationSPtr__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLEVideoAnimationSPtr;)J
.end method

.method public static final native new_VecNLEVideoAnimationSPtr__SWIG_2(IJLcom/bytedance/ies/nle/editor_jni/NLEVideoAnimation;)J
.end method

.method public static final native new_VecNLEVideoEffectSPtrConst__SWIG_0()J
.end method

.method public static final native new_VecNLEVideoEffectSPtrConst__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLEVideoEffectSPtrConst;)J
.end method

.method public static final native new_VecNLEVideoEffectSPtrConst__SWIG_2(IJLcom/bytedance/ies/nle/editor_jni/NLEVideoEffect;)J
.end method

.method public static final native new_VecNLEVideoEffectSPtr__SWIG_0()J
.end method

.method public static final native new_VecNLEVideoEffectSPtr__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLEVideoEffectSPtr;)J
.end method

.method public static final native new_VecNLEVideoEffectSPtr__SWIG_2(IJLcom/bytedance/ies/nle/editor_jni/NLEVideoEffect;)J
.end method

.method public static final native new_VecString__SWIG_0()J
.end method

.method public static final native new_VecString__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecString;)J
.end method

.method public static final native new_VecString__SWIG_2(ILjava/lang/String;)J
.end method

.method private static final native swig_module_init()V
.end method
