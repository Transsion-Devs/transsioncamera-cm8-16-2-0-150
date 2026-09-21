.class public final enum Lcom/bef/byteeffect/view/BEFView$BEFViewSceneKey;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Lcom/byteamazing/annotation/EffectKeep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bef/byteeffect/view/BEFView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BEFViewSceneKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bef/byteeffect/view/BEFView$BEFViewSceneKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bef/byteeffect/view/BEFView$BEFViewSceneKey;

.field public static final enum GAME:Lcom/bef/byteeffect/view/BEFView$BEFViewSceneKey;

.field public static final enum LIVE:Lcom/bef/byteeffect/view/BEFView$BEFViewSceneKey;

.field public static final enum LIVE_OGC:Lcom/bef/byteeffect/view/BEFView$BEFViewSceneKey;

.field public static final enum M10N:Lcom/bef/byteeffect/view/BEFView$BEFViewSceneKey;

.field public static final enum SHOOT:Lcom/bef/byteeffect/view/BEFView$BEFViewSceneKey;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 251
    new-instance v0, Lcom/bef/byteeffect/view/BEFView$BEFViewSceneKey;

    const-string v1, "SHOOT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bef/byteeffect/view/BEFView$BEFViewSceneKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bef/byteeffect/view/BEFView$BEFViewSceneKey;->SHOOT:Lcom/bef/byteeffect/view/BEFView$BEFViewSceneKey;

    new-instance v1, Lcom/bef/byteeffect/view/BEFView$BEFViewSceneKey;

    const-string v2, "LIVE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/bef/byteeffect/view/BEFView$BEFViewSceneKey;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bef/byteeffect/view/BEFView$BEFViewSceneKey;->LIVE:Lcom/bef/byteeffect/view/BEFView$BEFViewSceneKey;

    new-instance v2, Lcom/bef/byteeffect/view/BEFView$BEFViewSceneKey;

    const-string v3, "LIVE_OGC"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/bef/byteeffect/view/BEFView$BEFViewSceneKey;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/bef/byteeffect/view/BEFView$BEFViewSceneKey;->LIVE_OGC:Lcom/bef/byteeffect/view/BEFView$BEFViewSceneKey;

    new-instance v3, Lcom/bef/byteeffect/view/BEFView$BEFViewSceneKey;

    const-string v4, "GAME"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/bef/byteeffect/view/BEFView$BEFViewSceneKey;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/bef/byteeffect/view/BEFView$BEFViewSceneKey;->GAME:Lcom/bef/byteeffect/view/BEFView$BEFViewSceneKey;

    new-instance v4, Lcom/bef/byteeffect/view/BEFView$BEFViewSceneKey;

    const-string v5, "M10N"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/bef/byteeffect/view/BEFView$BEFViewSceneKey;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/bef/byteeffect/view/BEFView$BEFViewSceneKey;->M10N:Lcom/bef/byteeffect/view/BEFView$BEFViewSceneKey;

    .line 249
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/bef/byteeffect/view/BEFView$BEFViewSceneKey;

    move-result-object v0

    sput-object v0, Lcom/bef/byteeffect/view/BEFView$BEFViewSceneKey;->$VALUES:[Lcom/bef/byteeffect/view/BEFView$BEFViewSceneKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 250
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bef/byteeffect/view/BEFView$BEFViewSceneKey;
    .registers 2

    .line 249
    const-class v0, Lcom/bef/byteeffect/view/BEFView$BEFViewSceneKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bef/byteeffect/view/BEFView$BEFViewSceneKey;

    return-object p0
.end method

.method public static values()[Lcom/bef/byteeffect/view/BEFView$BEFViewSceneKey;
    .registers 1

    .line 249
    sget-object v0, Lcom/bef/byteeffect/view/BEFView$BEFViewSceneKey;->$VALUES:[Lcom/bef/byteeffect/view/BEFView$BEFViewSceneKey;

    invoke-virtual {v0}, [Lcom/bef/byteeffect/view/BEFView$BEFViewSceneKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bef/byteeffect/view/BEFView$BEFViewSceneKey;

    return-object v0
.end method
