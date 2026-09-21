.class public abstract synthetic Lcom/cutsame/solution/source/effect/OfflineEffectFetcher$WhenMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cutsame/solution/source/effect/OfflineEffectFetcher;
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

    invoke-static {}, Lcom/ss/android/ugc/cut_ui/CutSourceType;->values()[Lcom/ss/android/ugc/cut_ui/CutSourceType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/ss/android/ugc/cut_ui/CutSourceType;->WORKSPACE:Lcom/ss/android/ugc/cut_ui/CutSourceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/ss/android/ugc/cut_ui/CutSourceType;->PATH:Lcom/ss/android/ugc/cut_ui/CutSourceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sput-object v0, Lcom/cutsame/solution/source/effect/OfflineEffectFetcher$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
