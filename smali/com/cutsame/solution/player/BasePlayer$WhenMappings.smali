.class public abstract synthetic Lcom/cutsame/solution/player/BasePlayer$WhenMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cutsame/solution/player/BasePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;->values()[Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;->STARTED:Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;->PAUSED:Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;->SEEKING:Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;->STOPPED:Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v5, 0x4

    aput v5, v0, v1

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;->IDLE:Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v6, 0x5

    aput v6, v0, v1

    sput-object v0, Lcom/cutsame/solution/player/BasePlayer$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;->values()[Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;->UNKNOWN:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;->IDLE:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;->ERROR:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v1, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;->PLAYING:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1

    sget-object v1, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;->PAUSED:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v6, v0, v1

    sput-object v0, Lcom/cutsame/solution/player/BasePlayer$WhenMappings;->$EnumSwitchMapping$1:[I

    return-void
.end method
