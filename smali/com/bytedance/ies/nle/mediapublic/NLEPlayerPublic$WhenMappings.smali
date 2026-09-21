.class public final synthetic Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic$WhenMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/KeyframeType;->values()[Lcom/bytedance/ies/nle/editor_jni/KeyframeType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/KeyframeType;->VideoKeyframe:Lcom/bytedance/ies/nle/editor_jni/KeyframeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/KeyframeType;->MaskKeyframe:Lcom/bytedance/ies/nle/editor_jni/KeyframeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/KeyframeType;->TextKeyframe:Lcom/bytedance/ies/nle/editor_jni/KeyframeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/KeyframeType;->StickerKeyframe:Lcom/bytedance/ies/nle/editor_jni/KeyframeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/KeyframeType;->FilterKeyframe:Lcom/bytedance/ies/nle/editor_jni/KeyframeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/KeyframeType;->ChromaKeyframe:Lcom/bytedance/ies/nle/editor_jni/KeyframeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sput-object v0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
