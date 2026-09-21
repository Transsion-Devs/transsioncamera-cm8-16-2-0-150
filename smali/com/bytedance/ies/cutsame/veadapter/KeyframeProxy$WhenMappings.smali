.class public final synthetic Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy$WhenMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;
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

    invoke-static {}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->values()[Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->VIDEO:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->AUDIO:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->STICKER:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->TEXT:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->FILTER:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v1, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->ADJUST:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sput-object v0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
