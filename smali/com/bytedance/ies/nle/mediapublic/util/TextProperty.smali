.class public final Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final backgroundColor:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

.field private final outlineColor:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

.field private final outlineWidth:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

.field private final position:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

.field private final rotation:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

.field private final scale:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

.field private final shadowColor:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

.field private final shadowOffset:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

.field private final shadowSmoothing:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

.field private final textColor:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;


# direct methods
.method public constructor <init>()V
    .registers 14

    .line 0
    const/16 v11, 0x3ff

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;-><init>(Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLEMatrix;)V
    .registers 16

    const-string v0, "segment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "slot"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    new-instance v2, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    const/4 v0, 0x0

    if-nez p3, :cond_11

    move-object v1, v0

    goto :goto_19

    .line 176
    :cond_11
    invoke-virtual {p3}, Lcom/bytedance/ies/nle/editor_jni/NLEMatrix;->getTransformX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :goto_19
    if-nez v1, :cond_20

    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getTransformX()F

    move-result v1

    goto :goto_24

    :cond_20
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_24
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    if-nez p3, :cond_2b

    goto :goto_33

    .line 177
    :cond_2b
    invoke-virtual {p3}, Lcom/bytedance/ies/nle/editor_jni/NLEMatrix;->getTransformY()F

    move-result p3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_33
    if-nez v0, :cond_3a

    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getTransformY()F

    move-result p3

    goto :goto_3e

    :cond_3a
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p3

    :goto_3e
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    filled-new-array {v1, p3}, [Ljava/lang/Float;

    move-result-object p3

    .line 175
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 174
    invoke-direct {v2, p3}, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;-><init>(Ljava/util/List;)V

    .line 180
    new-instance v3, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    .line 182
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getScale()F

    move-result p3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    .line 183
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getScale()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {p3, v0}, [Ljava/lang/Float;

    move-result-object p3

    .line 181
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 180
    invoke-direct {v3, p3}, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;-><init>(Ljava/util/List;)V

    .line 186
    new-instance v4, Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getRotation()F

    move-result p2

    float-to-double p2, p2

    invoke-direct {v4, p2, p3}, Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;-><init>(D)V

    .line 187
    new-instance v5, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    .line 189
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;->getStyle()Lcom/bytedance/ies/nle/editor_jni/NLEStyText;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->getTextColor()J

    move-result-wide p2

    .line 188
    invoke-static {p2, p3}, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->ARGB2RGBA(J)Lcom/bytedance/ies/nle/editor_jni/VecFloat;

    move-result-object p2

    const-string p3, "ARGB2RGBA(\n             \u2026e.textColor\n            )"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    invoke-direct {v5, p2}, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;-><init>(Ljava/util/List;)V

    .line 192
    new-instance v6, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    .line 194
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;->getStyle()Lcom/bytedance/ies/nle/editor_jni/NLEStyText;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->getBackgroundColor()J

    move-result-wide p2

    .line 193
    invoke-static {p2, p3}, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->ARGB2RGBA(J)Lcom/bytedance/ies/nle/editor_jni/VecFloat;

    move-result-object p2

    const-string p3, "ARGB2RGBA(\n             \u2026groundColor\n            )"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    invoke-direct {v6, p2}, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;-><init>(Ljava/util/List;)V

    .line 197
    new-instance v7, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    .line 199
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;->getStyle()Lcom/bytedance/ies/nle/editor_jni/NLEStyText;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->getShadowColor()J

    move-result-wide p2

    .line 198
    invoke-static {p2, p3}, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->ARGB2RGBA(J)Lcom/bytedance/ies/nle/editor_jni/VecFloat;

    move-result-object p2

    const-string p3, "ARGB2RGBA(\n             \u2026shadowColor\n            )"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    invoke-direct {v7, p2}, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;-><init>(Ljava/util/List;)V

    .line 202
    new-instance v8, Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;->getStyle()Lcom/bytedance/ies/nle/editor_jni/NLEStyText;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->getShadowSmoothing()F

    move-result p2

    float-to-double p2, p2

    invoke-direct {v8, p2, p3}, Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;-><init>(D)V

    .line 203
    new-instance v9, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    .line 205
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;->getStyle()Lcom/bytedance/ies/nle/editor_jni/NLEStyText;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->getShadowOffsetX()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    .line 206
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;->getStyle()Lcom/bytedance/ies/nle/editor_jni/NLEStyText;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->getShadowOffsetY()F

    move-result p3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Float;

    move-result-object p2

    .line 204
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 203
    invoke-direct {v9, p2}, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;-><init>(Ljava/util/List;)V

    .line 209
    new-instance v10, Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;->getStyle()Lcom/bytedance/ies/nle/editor_jni/NLEStyText;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->getOutlineWidth()F

    move-result p2

    float-to-double p2, p2

    invoke-direct {v10, p2, p3}, Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;-><init>(D)V

    .line 210
    new-instance v11, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    .line 212
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;->getStyle()Lcom/bytedance/ies/nle/editor_jni/NLEStyText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->getOutlineColor()J

    move-result-wide p1

    .line 211
    invoke-static {p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->ARGB2RGBA(J)Lcom/bytedance/ies/nle/editor_jni/VecFloat;

    move-result-object p1

    const-string p2, "ARGB2RGBA(\n             \u2026utlineColor\n            )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    invoke-direct {v11, p1}, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;-><init>(Ljava/util/List;)V

    move-object v1, p0

    .line 173
    invoke-direct/range {v1 .. v11}, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;-><init>(Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;)V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;)V
    .registers 12

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scale"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rotation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textColor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundColor"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shadowColor"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shadowSmoothing"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shadowOffset"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outlineWidth"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outlineColor"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->position:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    .line 151
    iput-object p2, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->scale:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    .line 154
    iput-object p3, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->rotation:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    .line 155
    iput-object p4, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->textColor:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    .line 158
    iput-object p5, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->backgroundColor:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    .line 161
    iput-object p6, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->shadowColor:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    .line 164
    iput-object p7, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->shadowSmoothing:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    .line 165
    iput-object p8, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->shadowOffset:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    .line 168
    iput-object p9, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->outlineWidth:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    .line 169
    iput-object p10, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->outlineColor:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 20

    move/from16 v0, p11

    const/high16 v1, 0x3f800000    # 1.0f

    .line 152
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    .line 149
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_1e

    .line 148
    new-instance p1, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    .line 149
    filled-new-array {v2, v2}, [Ljava/lang/Float;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 148
    invoke-direct {p1, v3}, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;-><init>(Ljava/util/List;)V

    :cond_1e
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_2f

    .line 151
    new-instance p2, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    .line 152
    filled-new-array {v1, v1}, [Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 151
    invoke-direct {p2, v1}, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;-><init>(Ljava/util/List;)V

    :cond_2f
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_37

    .line 154
    # getter for: Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesKt;->DEFAULT_DOUBLE:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;
    invoke-static {}, Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesKt;->access$getDEFAULT_DOUBLE$p()Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    move-result-object p3

    :cond_37
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_48

    .line 155
    new-instance p4, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    .line 156
    filled-new-array {v2, v2, v2, v2}, [Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 155
    invoke-direct {p4, v1}, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;-><init>(Ljava/util/List;)V

    :cond_48
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_5a

    .line 158
    new-instance v1, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    .line 159
    filled-new-array {v2, v2, v2, v2}, [Ljava/lang/Float;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 158
    invoke-direct {v1, v3}, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;-><init>(Ljava/util/List;)V

    goto :goto_5b

    :cond_5a
    move-object v1, p5

    :goto_5b
    and-int/lit8 v3, v0, 0x20

    if-eqz v3, :cond_6d

    .line 161
    new-instance v3, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    .line 162
    filled-new-array {v2, v2, v2, v2}, [Ljava/lang/Float;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 161
    invoke-direct {v3, v4}, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;-><init>(Ljava/util/List;)V

    goto :goto_6e

    :cond_6d
    move-object v3, p6

    :goto_6e
    and-int/lit8 v4, v0, 0x40

    if-eqz v4, :cond_77

    .line 164
    # getter for: Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesKt;->DEFAULT_DOUBLE:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;
    invoke-static {}, Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesKt;->access$getDEFAULT_DOUBLE$p()Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    move-result-object v4

    goto :goto_78

    :cond_77
    move-object v4, p7

    :goto_78
    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_8a

    .line 165
    new-instance v5, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    .line 166
    filled-new-array {v2, v2}, [Ljava/lang/Float;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 165
    invoke-direct {v5, v6}, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;-><init>(Ljava/util/List;)V

    goto :goto_8b

    :cond_8a
    move-object v5, p8

    :goto_8b
    and-int/lit16 v6, v0, 0x100

    if-eqz v6, :cond_94

    .line 168
    # getter for: Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesKt;->DEFAULT_DOUBLE:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;
    invoke-static {}, Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesKt;->access$getDEFAULT_DOUBLE$p()Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    move-result-object v6

    goto :goto_96

    :cond_94
    move-object/from16 v6, p9

    :goto_96
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_b7

    .line 169
    new-instance v0, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    .line 170
    filled-new-array {v2, v2, v2, v2}, [Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 169
    invoke-direct {v0, v2}, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;-><init>(Ljava/util/List;)V

    move-object/from16 p12, v0

    :goto_a9
    move-object p5, p3

    move-object p6, p4

    move-object p7, v1

    move-object p8, v3

    move-object/from16 p9, v4

    move-object/from16 p10, v5

    move-object/from16 p11, v6

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    goto :goto_ba

    :cond_b7
    move-object/from16 p12, p10

    goto :goto_a9

    .line 147
    :goto_ba
    invoke-direct/range {p2 .. p12}, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;-><init>(Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;ILjava/lang/Object;)Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;
    .registers 13

    and-int/lit8 p12, p11, 0x1

    if-eqz p12, :cond_6

    iget-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->position:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    :cond_6
    and-int/lit8 p12, p11, 0x2

    if-eqz p12, :cond_c

    iget-object p2, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->scale:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    :cond_c
    and-int/lit8 p12, p11, 0x4

    if-eqz p12, :cond_12

    iget-object p3, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->rotation:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    :cond_12
    and-int/lit8 p12, p11, 0x8

    if-eqz p12, :cond_18

    iget-object p4, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->textColor:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    :cond_18
    and-int/lit8 p12, p11, 0x10

    if-eqz p12, :cond_1e

    iget-object p5, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->backgroundColor:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    :cond_1e
    and-int/lit8 p12, p11, 0x20

    if-eqz p12, :cond_24

    iget-object p6, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->shadowColor:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    :cond_24
    and-int/lit8 p12, p11, 0x40

    if-eqz p12, :cond_2a

    iget-object p7, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->shadowSmoothing:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    :cond_2a
    and-int/lit16 p12, p11, 0x80

    if-eqz p12, :cond_30

    iget-object p8, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->shadowOffset:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    :cond_30
    and-int/lit16 p12, p11, 0x100

    if-eqz p12, :cond_36

    iget-object p9, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->outlineWidth:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    :cond_36
    and-int/lit16 p11, p11, 0x200

    if-eqz p11, :cond_3c

    iget-object p10, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->outlineColor:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    :cond_3c
    move-object p11, p9

    move-object p12, p10

    move-object p9, p7

    move-object p10, p8

    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p12}, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->copy(Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;)Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->position:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    return-object p0
.end method

.method public final component10()Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->outlineColor:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    return-object p0
.end method

.method public final component2()Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->scale:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    return-object p0
.end method

.method public final component3()Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->rotation:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    return-object p0
.end method

.method public final component4()Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->textColor:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    return-object p0
.end method

.method public final component5()Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->backgroundColor:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    return-object p0
.end method

.method public final component6()Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->shadowColor:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    return-object p0
.end method

.method public final component7()Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->shadowSmoothing:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    return-object p0
.end method

.method public final component8()Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->shadowOffset:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    return-object p0
.end method

.method public final component9()Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->outlineWidth:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    return-object p0
.end method

.method public final copy(Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;)Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;
    .registers 22

    const-string p0, "position"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "scale"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "rotation"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "textColor"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "backgroundColor"

    move-object/from16 v5, p5

    invoke-static {v5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "shadowColor"

    move-object/from16 v6, p6

    invoke-static {v6, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "shadowSmoothing"

    move-object/from16 v7, p7

    invoke-static {v7, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "shadowOffset"

    move-object/from16 v8, p8

    invoke-static {v8, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "outlineWidth"

    move-object/from16 v9, p9

    invoke-static {v9, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "outlineColor"

    move-object/from16 v10, p10

    invoke-static {v10, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v10}, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;-><init>(Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;

    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->position:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    iget-object v3, p1, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->position:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->scale:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    iget-object v3, p1, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->scale:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->rotation:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    iget-object v3, p1, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->rotation:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->textColor:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    iget-object v3, p1, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->textColor:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->backgroundColor:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    iget-object v3, p1, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->backgroundColor:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->shadowColor:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    iget-object v3, p1, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->shadowColor:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    return v2

    :cond_4e
    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->shadowSmoothing:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    iget-object v3, p1, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->shadowSmoothing:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    return v2

    :cond_59
    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->shadowOffset:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    iget-object v3, p1, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->shadowOffset:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    return v2

    :cond_64
    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->outlineWidth:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    iget-object v3, p1, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->outlineWidth:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6f

    return v2

    :cond_6f
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->outlineColor:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    iget-object p1, p1, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->outlineColor:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7a

    return v2

    :cond_7a
    return v0
.end method

.method public final getBackgroundColor()Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;
    .registers 1

    .line 158
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->backgroundColor:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    return-object p0
.end method

.method public final getOutlineColor()Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;
    .registers 1

    .line 169
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->outlineColor:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    return-object p0
.end method

.method public final getOutlineWidth()Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;
    .registers 1

    .line 168
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->outlineWidth:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    return-object p0
.end method

.method public final getPosition()Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;
    .registers 1

    .line 148
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->position:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    return-object p0
.end method

.method public final getRotation()Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;
    .registers 1

    .line 154
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->rotation:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    return-object p0
.end method

.method public final getScale()Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->scale:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    return-object p0
.end method

.method public final getShadowColor()Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;
    .registers 1

    .line 161
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->shadowColor:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    return-object p0
.end method

.method public final getShadowOffset()Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;
    .registers 1

    .line 165
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->shadowOffset:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    return-object p0
.end method

.method public final getShadowSmoothing()Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;
    .registers 1

    .line 164
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->shadowSmoothing:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    return-object p0
.end method

.method public final getTextColor()Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;
    .registers 1

    .line 155
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->textColor:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->position:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->scale:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    invoke-virtual {v1}, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->rotation:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    invoke-virtual {v1}, Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->textColor:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    invoke-virtual {v1}, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->backgroundColor:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    invoke-virtual {v1}, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->shadowColor:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    invoke-virtual {v1}, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->shadowSmoothing:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    invoke-virtual {v1}, Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->shadowOffset:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    invoke-virtual {v1}, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->outlineWidth:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    invoke-virtual {v1}, Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->outlineColor:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextProperty(position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->position:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->scale:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->rotation:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->textColor:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->backgroundColor:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shadowColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->shadowColor:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shadowSmoothing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->shadowSmoothing:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shadowOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->shadowOffset:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outlineWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->outlineWidth:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outlineColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->outlineColor:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
