.class public Lcom/bytedance/ies/nle/editor_jni/NLEStyText;
.super Lcom/bytedance/ies/nle/editor_jni/NLENode;
.source "SourceFile"


# static fields
.field public static final AlignType_BOTTOM:I = 0x4

.field public static final AlignType_CENTER:I = 0x1

.field public static final AlignType_LEFT:I = 0x0

.field public static final AlignType_RIGHT:I = 0x2

.field public static final AlignType_TOP:I = 0x3

.field public static final DEFAULT_TEXT_SIZE:F = 18.0f

.field public static final TypeSettingKind_Horizontal:I = 0x0

.field public static final TypeSettingKind_Vertical:I = 0x1


# instance fields
.field private transient swigCMemOwnDerived:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 801
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->new_NLEStyText__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 7

    .line 16
    invoke-static {p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_SWIGSmartPtrUpcast(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;-><init>(JZ)V

    .line 17
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCMemOwnDerived:Z

    .line 18
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 805
    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->new_NLEStyText__SWIG_1(Ljava/lang/String;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;-><init>(JZ)V

    return-void
.end method

.method public static ARGB2RGBA(J)Lcom/bytedance/ies/nle/editor_jni/VecFloat;
    .registers 4

    .line 64
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecFloat;

    invoke-static {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_ARGB2RGBA(J)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/bytedance/ies/nle/editor_jni/VecFloat;-><init>(JZ)V

    return-object v0
.end method

.method public static RGBA2ARGB(Lcom/bytedance/ies/nle/editor_jni/VecFloat;)J
    .registers 3

    .line 57
    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/VecFloat;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/VecFloat;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_RGBA2ARGB(JLcom/bytedance/ies/nle/editor_jni/VecFloat;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static argb2hex(J)Ljava/lang/String;
    .registers 2

    .line 76
    invoke-static {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_argb2hex(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLEStyText;
    .registers 5

    .line 47
    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 48
    :cond_10
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;-><init>(JZ)V

    return-object p0
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEStyText;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 22
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    return-wide v0
.end method

.method public static rgbaArray2RgbHex(Lcom/bytedance/ies/nle/editor_jni/VecFloat;)Ljava/lang/String;
    .registers 3

    .line 72
    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/VecFloat;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/VecFloat;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_rgbaArray2RgbHex(JLcom/bytedance/ies/nle/editor_jni/VecFloat;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static rgbaArray2hex(Lcom/bytedance/ies/nle/editor_jni/VecFloat;)Ljava/lang/String;
    .registers 3

    .line 68
    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/VecFloat;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/VecFloat;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_rgbaArray2hex(JLcom/bytedance/ies/nle/editor_jni/VecFloat;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addFallbackFontList(Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
    .registers 8

    .line 496
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_addFallbackFontList(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V

    return-void
.end method

.method public clearFallbackFontList()V
    .registers 3

    .line 504
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_clearFallbackFontList(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)V

    return-void
.end method

.method public clone()Lcom/bytedance/ies/nle/editor_jni/NLENode;
    .registers 5

    .line 52
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_clone(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 53
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;-><init>(JZ)V

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1

    .line 11
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->clone()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 36
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 37
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCMemOwnDerived:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 38
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCMemOwnDerived:Z

    .line 39
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->delete_NLEStyText(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1d

    .line 41
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    .line 43
    :cond_18
    invoke-super {p0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->delete()V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_14

    .line 44
    monitor-exit p0

    return-void

    :goto_1d
    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_14

    throw v0
.end method

.method protected finalize()V
    .registers 1

    .line 32
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->delete()V

    return-void
.end method

.method public getAlignType()I
    .registers 3

    .line 176
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getAlignType(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)I

    move-result p0

    return p0
.end method

.method public getBackground()Z
    .registers 3

    .line 106
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getBackground(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z

    move-result p0

    return p0
.end method

.method public getBackgroundColor()J
    .registers 3

    .line 121
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getBackgroundColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBackgroundColorVector()Lcom/bytedance/ies/nle/editor_jni/VecFloat;
    .registers 4

    .line 129
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecFloat;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getBackgroundColorVector(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/VecFloat;-><init>(JZ)V

    return-object v0
.end method

.method public getBackgroundHeight()F
    .registers 3

    .line 767
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getBackgroundHeight(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)F

    move-result p0

    return p0
.end method

.method public getBackgroundHorizontalOffset()F
    .registers 3

    .line 797
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getBackgroundHorizontalOffset(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)F

    move-result p0

    return p0
.end method

.method public getBackgroundRoundCorner()Z
    .registers 3

    .line 707
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getBackgroundRoundCorner(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z

    move-result p0

    return p0
.end method

.method public getBackgroundRoundRadius()F
    .registers 3

    .line 722
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getBackgroundRoundRadius(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)F

    move-result p0

    return p0
.end method

.method public getBackgroundRoundRadiusScale()F
    .registers 3

    .line 737
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getBackgroundRoundRadiusScale(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)F

    move-result p0

    return p0
.end method

.method public getBackgroundVerticalOffset()F
    .registers 3

    .line 782
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getBackgroundVerticalOffset(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)F

    move-result p0

    return p0
.end method

.method public getBackgroundWidth()F
    .registers 3

    .line 752
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getBackgroundWidth(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)F

    move-result p0

    return p0
.end method

.method public getBold()Z
    .registers 3

    .line 272
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getBold(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z

    move-result p0

    return p0
.end method

.method public getBoldWidth()F
    .registers 3

    .line 287
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getBoldWidth(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)F

    move-result p0

    return p0
.end method

.method public getCharSpacing()F
    .registers 3

    .line 378
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getCharSpacing(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)F

    move-result p0

    return p0
.end method

.method public getFallbackFont()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;
    .registers 5

    .line 491
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getFallbackFont(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 492
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;-><init>(JZ)V

    return-object p0
.end method

.method public getFallbackFontLists()Lcom/bytedance/ies/nle/editor_jni/VecNLEResourceNodeSPtr;
    .registers 4

    .line 511
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecNLEResourceNodeSPtr;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getFallbackFontLists(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/VecNLEResourceNodeSPtr;-><init>(JZ)V

    return-object v0
.end method

.method public getFlower()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;
    .registers 5

    .line 635
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getFlower(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 636
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;-><init>(JZ)V

    return-object p0
.end method

.method public getFont()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;
    .registers 5

    .line 477
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getFont(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 478
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;-><init>(JZ)V

    return-object p0
.end method

.method public getFontSize()J
    .registers 3

    .line 91
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getFontSize(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getInnerPadding()F
    .registers 3

    .line 396
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getInnerPadding(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)F

    move-result p0

    return p0
.end method

.method public getItalicDegree()J
    .registers 3

    .line 302
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getItalicDegree(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getKTVColor()J
    .registers 3

    .line 569
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getKTVColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getKTVColorVector()Lcom/bytedance/ies/nle/editor_jni/VecFloat;
    .registers 4

    .line 577
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecFloat;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getKTVColorVector(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/VecFloat;-><init>(JZ)V

    return-object v0
.end method

.method public getKTVOutlineColor()J
    .registers 3

    .line 592
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getKTVOutlineColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getKTVOutlineColorVector()Lcom/bytedance/ies/nle/editor_jni/VecFloat;
    .registers 4

    .line 600
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecFloat;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getKTVOutlineColorVector(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/VecFloat;-><init>(JZ)V

    return-object v0
.end method

.method public getKTVShadowColor()J
    .registers 3

    .line 615
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getKTVShadowColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getKTVShadowColorVector()Lcom/bytedance/ies/nle/editor_jni/VecFloat;
    .registers 4

    .line 623
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecFloat;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getKTVShadowColorVector(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/VecFloat;-><init>(JZ)V

    return-object v0
.end method

.method public getLineGap()F
    .registers 3

    .line 362
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getLineGap(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)F

    move-result p0

    return p0
.end method

.method public getLineMaxWidth()F
    .registers 3

    .line 412
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getLineMaxWidth(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)F

    move-result p0

    return p0
.end method

.method public getOneLineTruncated()Z
    .registers 3

    .line 677
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getOneLineTruncated(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z

    move-result p0

    return p0
.end method

.method public getOutline()Z
    .registers 3

    .line 427
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getOutline(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z

    move-result p0

    return p0
.end method

.method public getOutlineColor()J
    .registers 3

    .line 457
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getOutlineColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutlineColorVector()Lcom/bytedance/ies/nle/editor_jni/VecFloat;
    .registers 4

    .line 465
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecFloat;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getOutlineColorVector(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/VecFloat;-><init>(JZ)V

    return-object v0
.end method

.method public getOutlineWidth()F
    .registers 3

    .line 442
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getOutlineWidth(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)F

    move-result p0

    return p0
.end method

.method public getShadow()Z
    .registers 3

    .line 191
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getShadow(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z

    move-result p0

    return p0
.end method

.method public getShadowColor()J
    .registers 3

    .line 206
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getShadowColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShadowColorVector()Lcom/bytedance/ies/nle/editor_jni/VecFloat;
    .registers 4

    .line 214
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecFloat;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getShadowColorVector(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/VecFloat;-><init>(JZ)V

    return-object v0
.end method

.method public getShadowOffsetX()F
    .registers 3

    .line 245
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getShadowOffsetX(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)F

    move-result p0

    return p0
.end method

.method public getShadowOffsetY()F
    .registers 3

    .line 257
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getShadowOffsetY(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)F

    move-result p0

    return p0
.end method

.method public getShadowSmoothing()F
    .registers 3

    .line 230
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getShadowSmoothing(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)F

    move-result p0

    return p0
.end method

.method public getShape()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;
    .registers 5

    .line 523
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getShape(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 524
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;-><init>(JZ)V

    return-object p0
.end method

.method public getShapeFlipX()Z
    .registers 3

    .line 539
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getShapeFlipX(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z

    move-result p0

    return p0
.end method

.method public getShapeFlipY()Z
    .registers 3

    .line 554
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getShapeFlipY(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z

    move-result p0

    return p0
.end method

.method public getTextColor()J
    .registers 3

    .line 144
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getTextColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTextColorVector()Lcom/bytedance/ies/nle/editor_jni/VecFloat;
    .registers 4

    .line 152
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecFloat;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getTextColorVector(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/VecFloat;-><init>(JZ)V

    return-object v0
.end method

.method public getTruncatedPostfix()Ljava/lang/String;
    .registers 3

    .line 692
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getTruncatedPostfix(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTypeSettingKind()I
    .registers 3

    .line 164
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getTypeSettingKind(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)I

    move-result p0

    return p0
.end method

.method public getUnderline()Z
    .registers 3

    .line 317
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getUnderline(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z

    move-result p0

    return p0
.end method

.method public getUnderlineOffset()F
    .registers 3

    .line 347
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getUnderlineOffset(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)F

    move-result p0

    return p0
.end method

.method public getUnderlineWidth()F
    .registers 3

    .line 332
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getUnderlineWidth(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)F

    move-result p0

    return p0
.end method

.method public getUseFlowerDefaultColor()Z
    .registers 3

    .line 654
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getUseFlowerDefaultColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z

    move-result p0

    return p0
.end method

.method public getUseFlowerDefaultColorVector()Lcom/bytedance/ies/nle/editor_jni/VecFloat;
    .registers 4

    .line 662
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecFloat;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_getUseFlowerDefaultColorVector(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/VecFloat;-><init>(JZ)V

    return-object v0
.end method

.method public hasAlignType()Z
    .registers 3

    .line 168
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_hasAlignType(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z

    move-result p0

    return p0
.end method

.method public hasBackground()Z
    .registers 3

    .line 95
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_hasBackground(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z

    move-result p0

    return p0
.end method

.method public hasBackgroundColor()Z
    .registers 3

    .line 110
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_hasBackgroundColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z

    move-result p0

    return p0
.end method

.method public hasBackgroundHeight()Z
    .registers 3

    .line 756
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_hasBackgroundHeight(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z

    move-result p0

    return p0
.end method

.method public hasBackgroundHorizontalOffset()Z
    .registers 3

    .line 786
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_hasBackgroundHorizontalOffset(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z

    move-result p0

    return p0
.end method

.method public hasBackgroundRoundCorner()Z
    .registers 3

    .line 696
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_hasBackgroundRoundCorner(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z

    move-result p0

    return p0
.end method

.method public hasBackgroundRoundRadius()Z
    .registers 3

    .line 711
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_hasBackgroundRoundRadius(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z

    move-result p0

    return p0
.end method

.method public hasBackgroundRoundRadiusScale()Z
    .registers 3

    .line 726
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_hasBackgroundRoundRadiusScale(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z

    move-result p0

    return p0
.end method

.method public hasBackgroundVerticalOffset()Z
    .registers 3

    .line 771
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_hasBackgroundVerticalOffset(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z

    move-result p0

    return p0
.end method

.method public hasBackgroundWidth()Z
    .registers 3

    .line 741
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_hasBackgroundWidth(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z

    move-result p0

    return p0
.end method

.method public hasBold()Z
    .registers 3

    .line 261
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_hasBold(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z

    move-result p0

    return p0
.end method

.method public hasBoldWidth()Z
    .registers 3

    .line 276
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_hasBoldWidth(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z

    move-result p0

    return p0
.end method

.method public hasCharSpacing()Z
    .registers 3

    .line 366
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_hasCharSpacing(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z

    move-result p0

    return p0
.end method

.method public hasFontSize()Z
    .registers 3

    .line 80
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_hasFontSize(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z

    move-result p0

    return p0
.end method

.method public hasInnerPadding()Z
    .registers 3

    .line 382
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_hasInnerPadding(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z

    move-result p0

    return p0
.end method

.method public hasItalicDegree()Z
    .registers 3

    .line 291
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_hasItalicDegree(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z

    move-result p0

    return p0
.end method

.method public hasKTVColor()Z
    .registers 3

    .line 558
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_hasKTVColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z

    move-result p0

    return p0
.end method

.method public hasKTVOutlineColor()Z
    .registers 3

    .line 581
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_hasKTVOutlineColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z

    move-result p0

    return p0
.end method

.method public hasKTVShadowColor()Z
    .registers 3

    .line 604
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_hasKTVShadowColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z

    move-result p0

    return p0
.end method

.method public hasLineGap()Z
    .registers 3

    .line 351
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_hasLineGap(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z

    move-result p0

    return p0
.end method

.method public hasLineMaxWidth()Z
    .registers 3

    .line 400
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_hasLineMaxWidth(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z

    move-result p0

    return p0
.end method

.method public hasOneLineTruncated()Z
    .registers 3

    .line 666
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_hasOneLineTruncated(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z

    move-result p0

    return p0
.end method

.method public hasOutline()Z
    .registers 3

    .line 416
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_hasOutline(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z

    move-result p0

    return p0
.end method

.method public hasOutlineColor()Z
    .registers 3

    .line 446
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_hasOutlineColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z

    move-result p0

    return p0
.end method

.method public hasOutlineWidth()Z
    .registers 3

    .line 431
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_hasOutlineWidth(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z

    move-result p0

    return p0
.end method

.method public hasShadow()Z
    .registers 3

    .line 180
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_hasShadow(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z

    move-result p0

    return p0
.end method

.method public hasShadowColor()Z
    .registers 3

    .line 195
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_hasShadowColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z

    move-result p0

    return p0
.end method

.method public hasShadowOffsetX()Z
    .registers 3

    .line 234
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_hasShadowOffsetX(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z

    move-result p0

    return p0
.end method

.method public hasShadowOffsetY()Z
    .registers 3

    .line 249
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_hasShadowOffsetY(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z

    move-result p0

    return p0
.end method

.method public hasShadowSmoothing()Z
    .registers 3

    .line 218
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_hasShadowSmoothing(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z

    move-result p0

    return p0
.end method

.method public hasShapeFlipX()Z
    .registers 3

    .line 528
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_hasShapeFlipX(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z

    move-result p0

    return p0
.end method

.method public hasShapeFlipY()Z
    .registers 3

    .line 543
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_hasShapeFlipY(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z

    move-result p0

    return p0
.end method

.method public hasTextColor()Z
    .registers 3

    .line 133
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_hasTextColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z

    move-result p0

    return p0
.end method

.method public hasTruncatedPostfix()Z
    .registers 3

    .line 681
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_hasTruncatedPostfix(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z

    move-result p0

    return p0
.end method

.method public hasTypeSettingKind()Z
    .registers 3

    .line 156
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_hasTypeSettingKind(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z

    move-result p0

    return p0
.end method

.method public hasUnderline()Z
    .registers 3

    .line 306
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_hasUnderline(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z

    move-result p0

    return p0
.end method

.method public hasUnderlineOffset()Z
    .registers 3

    .line 336
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_hasUnderlineOffset(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z

    move-result p0

    return p0
.end method

.method public hasUnderlineWidth()Z
    .registers 3

    .line 321
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_hasUnderlineWidth(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z

    move-result p0

    return p0
.end method

.method public hasUseFlowerDefaultColor()Z
    .registers 3

    .line 640
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_hasUseFlowerDefaultColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Z

    move-result p0

    return p0
.end method

.method public removeFallbackFontList(Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)Z
    .registers 8

    .line 500
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_removeFallbackFontList(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)Z

    move-result p0

    return p0
.end method

.method public setAlignType(I)V
    .registers 4

    .line 172
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_setAlignType(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;I)V

    return-void
.end method

.method public setBackground(Z)V
    .registers 4

    .line 99
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_setBackground(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;Z)V

    return-void
.end method

.method public setBackgroundColor(J)V
    .registers 5

    .line 114
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_setBackgroundColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;J)V

    return-void
.end method

.method public setBackgroundColorVector(Lcom/bytedance/ies/nle/editor_jni/VecFloat;)V
    .registers 8

    .line 125
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/VecFloat;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/VecFloat;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_setBackgroundColorVector(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;JLcom/bytedance/ies/nle/editor_jni/VecFloat;)V

    return-void
.end method

.method public setBackgroundHeight(F)V
    .registers 4

    .line 760
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_setBackgroundHeight(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;F)V

    return-void
.end method

.method public setBackgroundHorizontalOffset(F)V
    .registers 4

    .line 790
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_setBackgroundHorizontalOffset(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;F)V

    return-void
.end method

.method public setBackgroundRoundCorner(Z)V
    .registers 4

    .line 700
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_setBackgroundRoundCorner(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;Z)V

    return-void
.end method

.method public setBackgroundRoundRadius(F)V
    .registers 4

    .line 715
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_setBackgroundRoundRadius(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;F)V

    return-void
.end method

.method public setBackgroundRoundRadiusScale(F)V
    .registers 4

    .line 730
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_setBackgroundRoundRadiusScale(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;F)V

    return-void
.end method

.method public setBackgroundVerticalOffset(F)V
    .registers 4

    .line 775
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_setBackgroundVerticalOffset(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;F)V

    return-void
.end method

.method public setBackgroundWidth(F)V
    .registers 4

    .line 745
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_setBackgroundWidth(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;F)V

    return-void
.end method

.method public setBold(Z)V
    .registers 4

    .line 265
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_setBold(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;Z)V

    return-void
.end method

.method public setBoldWidth(F)V
    .registers 4

    .line 280
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_setBoldWidth(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;F)V

    return-void
.end method

.method public setCharSpacing(F)V
    .registers 4

    .line 370
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_setCharSpacing(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;F)V

    return-void
.end method

.method public setFallbackFont(Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
    .registers 8

    .line 482
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_setFallbackFont(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V

    return-void
.end method

.method public setFlower(Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
    .registers 8

    .line 627
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_setFlower(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V

    return-void
.end method

.method public setFont(Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
    .registers 8

    .line 469
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_setFont(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V

    return-void
.end method

.method public setFontSize(J)V
    .registers 5

    .line 84
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_setFontSize(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;J)V

    return-void
.end method

.method public setInnerPadding(F)V
    .registers 4

    .line 386
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_setInnerPadding(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;F)V

    return-void
.end method

.method public setItalicDegree(J)V
    .registers 5

    .line 295
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_setItalicDegree(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;J)V

    return-void
.end method

.method public setKTVColor(J)V
    .registers 5

    .line 562
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_setKTVColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;J)V

    return-void
.end method

.method public setKTVColorVector(Lcom/bytedance/ies/nle/editor_jni/VecFloat;)V
    .registers 8

    .line 573
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/VecFloat;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/VecFloat;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_setKTVColorVector(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;JLcom/bytedance/ies/nle/editor_jni/VecFloat;)V

    return-void
.end method

.method public setKTVOutlineColor(J)V
    .registers 5

    .line 585
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_setKTVOutlineColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;J)V

    return-void
.end method

.method public setKTVOutlineColorVector(Lcom/bytedance/ies/nle/editor_jni/VecFloat;)V
    .registers 8

    .line 596
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/VecFloat;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/VecFloat;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_setKTVOutlineColorVector(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;JLcom/bytedance/ies/nle/editor_jni/VecFloat;)V

    return-void
.end method

.method public setKTVShadowColor(J)V
    .registers 5

    .line 608
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_setKTVShadowColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;J)V

    return-void
.end method

.method public setKTVShadowColorVector(Lcom/bytedance/ies/nle/editor_jni/VecFloat;)V
    .registers 8

    .line 619
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/VecFloat;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/VecFloat;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_setKTVShadowColorVector(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;JLcom/bytedance/ies/nle/editor_jni/VecFloat;)V

    return-void
.end method

.method public setLineGap(F)V
    .registers 4

    .line 355
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_setLineGap(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;F)V

    return-void
.end method

.method public setLineMaxWidth(F)V
    .registers 4

    .line 404
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_setLineMaxWidth(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;F)V

    return-void
.end method

.method public setOneLineTruncated(Z)V
    .registers 4

    .line 670
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_setOneLineTruncated(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;Z)V

    return-void
.end method

.method public setOutline(Z)V
    .registers 4

    .line 420
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_setOutline(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;Z)V

    return-void
.end method

.method public setOutlineColor(J)V
    .registers 5

    .line 450
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_setOutlineColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;J)V

    return-void
.end method

.method public setOutlineColorVector(Lcom/bytedance/ies/nle/editor_jni/VecFloat;)V
    .registers 8

    .line 461
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/VecFloat;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/VecFloat;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_setOutlineColorVector(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;JLcom/bytedance/ies/nle/editor_jni/VecFloat;)V

    return-void
.end method

.method public setOutlineWidth(F)V
    .registers 4

    .line 435
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_setOutlineWidth(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;F)V

    return-void
.end method

.method public setShadow(Z)V
    .registers 4

    .line 184
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_setShadow(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;Z)V

    return-void
.end method

.method public setShadowColor(J)V
    .registers 5

    .line 199
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_setShadowColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;J)V

    return-void
.end method

.method public setShadowColorVector(Lcom/bytedance/ies/nle/editor_jni/VecFloat;)V
    .registers 8

    .line 210
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/VecFloat;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/VecFloat;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_setShadowColorVector(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;JLcom/bytedance/ies/nle/editor_jni/VecFloat;)V

    return-void
.end method

.method public setShadowOffsetX(F)V
    .registers 4

    .line 238
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_setShadowOffsetX(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;F)V

    return-void
.end method

.method public setShadowOffsetY(F)V
    .registers 4

    .line 253
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_setShadowOffsetY(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;F)V

    return-void
.end method

.method public setShadowSmoothing(F)V
    .registers 4

    .line 222
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_setShadowSmoothing(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;F)V

    return-void
.end method

.method public setShape(Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
    .registers 8

    .line 515
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_setShape(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V

    return-void
.end method

.method public setShapeFlipX(Z)V
    .registers 4

    .line 532
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_setShapeFlipX(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;Z)V

    return-void
.end method

.method public setShapeFlipY(Z)V
    .registers 4

    .line 547
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_setShapeFlipY(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;Z)V

    return-void
.end method

.method public setTextColor(J)V
    .registers 5

    .line 137
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_setTextColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;J)V

    return-void
.end method

.method public setTextColorVector(Lcom/bytedance/ies/nle/editor_jni/VecFloat;)V
    .registers 8

    .line 148
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/VecFloat;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/VecFloat;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_setTextColorVector(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;JLcom/bytedance/ies/nle/editor_jni/VecFloat;)V

    return-void
.end method

.method public setTruncatedPostfix(Ljava/lang/String;)V
    .registers 4

    .line 685
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_setTruncatedPostfix(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;Ljava/lang/String;)V

    return-void
.end method

.method public setTypeSettingKind(I)V
    .registers 4

    .line 160
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_setTypeSettingKind(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;I)V

    return-void
.end method

.method public setUnderline(Z)V
    .registers 4

    .line 310
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_setUnderline(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;Z)V

    return-void
.end method

.method public setUnderlineOffset(F)V
    .registers 4

    .line 340
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_setUnderlineOffset(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;F)V

    return-void
.end method

.method public setUnderlineWidth(F)V
    .registers 4

    .line 325
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_setUnderlineWidth(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;F)V

    return-void
.end method

.method public setUseFlowerDefaultColor(Z)V
    .registers 4

    .line 644
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_setUseFlowerDefaultColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;Z)V

    return-void
.end method

.method public setUseFlowerDefaultColorVector(Lcom/bytedance/ies/nle/editor_jni/VecFloat;)V
    .registers 8

    .line 658
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/VecFloat;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/VecFloat;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_setUseFlowerDefaultColorVector(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;JLcom/bytedance/ies/nle/editor_jni/VecFloat;)V

    return-void
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 26
    iput-boolean p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCMemOwnDerived:Z

    .line 27
    invoke-super {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigSetCMemOwn(Z)V

    return-void
.end method

.method public toEffectJsonString()Ljava/lang/String;
    .registers 3

    .line 809
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyText_toEffectJsonString(JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
