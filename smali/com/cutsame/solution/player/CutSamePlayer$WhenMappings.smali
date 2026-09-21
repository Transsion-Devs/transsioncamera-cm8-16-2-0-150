.class public abstract synthetic Lcom/cutsame/solution/player/CutSamePlayer$WhenMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cutsame/solution/player/CutSamePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/cutsame/solution/player/RotateDegree;->values()[Lcom/cutsame/solution/player/RotateDegree;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/cutsame/solution/player/RotateDegree;->ROTATE_90:Lcom/cutsame/solution/player/RotateDegree;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/cutsame/solution/player/RotateDegree;->ROTATE_180:Lcom/cutsame/solution/player/RotateDegree;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/cutsame/solution/player/RotateDegree;->ROTATE_270:Lcom/cutsame/solution/player/RotateDegree;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sput-object v0, Lcom/cutsame/solution/player/CutSamePlayer$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
