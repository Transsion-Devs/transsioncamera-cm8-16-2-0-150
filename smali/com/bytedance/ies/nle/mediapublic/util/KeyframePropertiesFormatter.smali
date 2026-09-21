.class public final Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesFormatter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final INSTANCE:Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesFormatter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesFormatter;

    invoke-direct {v0}, Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesFormatter;-><init>()V

    sput-object v0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesFormatter;->INSTANCE:Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesFormatter;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic format$default(Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesFormatter;Lcom/bytedance/ies/nle/editor_jni/NLESegment;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Ljava/lang/String;Lcom/google/gson/Gson;Lcom/bytedance/ies/nle/editor_jni/NLEMatrix;ZILjava/lang/Object;)Ljava/lang/String;
    .registers 16

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    const/4 p6, 0x1

    :cond_5
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 234
    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesFormatter;->format(Lcom/bytedance/ies/nle/editor_jni/NLESegment;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Ljava/lang/String;Lcom/google/gson/Gson;Lcom/bytedance/ies/nle/editor_jni/NLEMatrix;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final format(Lcom/bytedance/ies/nle/editor_jni/NLESegment;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Ljava/lang/String;Lcom/google/gson/Gson;Lcom/bytedance/ies/nle/editor_jni/NLEMatrix;Z)Ljava/lang/String;
    .registers 10

    const-string p0, "segment"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "slot"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "filterType"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "gson"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;

    move-result-object p0

    const-string v0, "audio volume filter"

    const-string v1, "gson.toJson(\n           \u2026      )\n                )"

    if-nez p0, :cond_1f

    goto :goto_47

    .line 244
    :cond_1f
    const-string v2, "canvas blend"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 245
    new-instance p1, Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;

    invoke-direct {p1, p0, p2, p5, p6}, Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;-><init>(Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLEMatrix;Z)V

    .line 244
    invoke-virtual {p4, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 252
    :cond_34
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_47

    .line 253
    new-instance p1, Lcom/bytedance/ies/nle/mediapublic/util/VideoVolumeProperty;

    invoke-direct {p1, p0, p2, p5}, Lcom/bytedance/ies/nle/mediapublic/util/VideoVolumeProperty;-><init>(Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLEMatrix;)V

    .line 252
    invoke-virtual {p4, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 261
    :cond_47
    :goto_47
    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;

    move-result-object p0

    if-nez p0, :cond_4e

    goto :goto_61

    .line 263
    :cond_4e
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_61

    .line 264
    new-instance p1, Lcom/bytedance/ies/nle/mediapublic/util/VideoVolumeProperty;

    invoke-direct {p1, p0, p2, p5}, Lcom/bytedance/ies/nle/mediapublic/util/VideoVolumeProperty;-><init>(Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLEMatrix;)V

    .line 263
    invoke-virtual {p4, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 273
    :cond_61
    :goto_61
    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;

    move-result-object p0

    if-nez p0, :cond_ba

    .line 277
    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;

    move-result-object p0

    const-string p3, "gson.toJson(\n           \u2026          )\n            )"

    if-nez p0, :cond_ad

    .line 287
    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextTemplate;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextTemplate;

    move-result-object p0

    if-nez p0, :cond_9e

    .line 291
    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;

    move-result-object p0

    if-nez p0, :cond_91

    .line 301
    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMask;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentMask;

    move-result-object p0

    if-nez p0, :cond_84

    .line 310
    const-string p0, ""

    return-object p0

    .line 303
    :cond_84
    new-instance p1, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;

    invoke-direct {p1, p0, p2, p5}, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;-><init>(Lcom/bytedance/ies/nle/editor_jni/NLESegmentMask;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLEMatrix;)V

    .line 302
    invoke-virtual {p4, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 293
    :cond_91
    new-instance p1, Lcom/bytedance/ies/nle/mediapublic/util/IntensityProperty;

    invoke-direct {p1, p0, p2, p5}, Lcom/bytedance/ies/nle/mediapublic/util/IntensityProperty;-><init>(Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLEMatrix;)V

    .line 292
    invoke-virtual {p4, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 288
    :cond_9e
    new-instance p1, Lcom/bytedance/ies/nle/mediapublic/util/TextTemplateProperty;

    invoke-direct {p1, p0, p2, p5}, Lcom/bytedance/ies/nle/mediapublic/util/TextTemplateProperty;-><init>(Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextTemplate;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLEMatrix;)V

    invoke-virtual {p4, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "gson.toJson(TextTemplate\u2026y(this, slot, nleMatrix))"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 279
    :cond_ad
    new-instance p1, Lcom/bytedance/ies/nle/mediapublic/util/StickerProperty;

    invoke-direct {p1, p0, p2, p5}, Lcom/bytedance/ies/nle/mediapublic/util/StickerProperty;-><init>(Lcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLEMatrix;)V

    .line 278
    invoke-virtual {p4, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 274
    :cond_ba
    new-instance p1, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;

    invoke-direct {p1, p0, p2, p5}, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;-><init>(Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLEMatrix;)V

    invoke-virtual {p4, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "gson.toJson(TextProperty(this, slot, nleMatrix))"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
