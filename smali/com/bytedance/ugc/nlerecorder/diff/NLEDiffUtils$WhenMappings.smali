.class public final synthetic Lcom/bytedance/ugc/nlerecorder/diff/NLEDiffUtils$WhenMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ugc/nlerecorder/diff/NLEDiffUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    invoke-static {}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;->values()[Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;->CHANGE_TYPE_DELETE:Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;->CHANGE_TYPE_ADD:Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v1, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;->CHANGE_TYPE_UPDATE:Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sput-object v0, Lcom/bytedance/ugc/nlerecorder/diff/NLEDiffUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->values()[Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->VIDEO:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->MV:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->AUDIO:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->EFFECT:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->FILTER:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sput-object v0, Lcom/bytedance/ugc/nlerecorder/diff/NLEDiffUtils$WhenMappings;->$EnumSwitchMapping$1:[I

    return-void
.end method
