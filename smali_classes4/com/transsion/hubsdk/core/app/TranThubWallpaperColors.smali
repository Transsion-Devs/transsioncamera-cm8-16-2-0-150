.class public Lcom/transsion/hubsdk/core/app/TranThubWallpaperColors;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/app/ITranWallpaperColorsAdapter;


# instance fields
.field private mTranWallpaperColors:Lcom/transsion/hubsdk/app/TranWallpaperColors;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/transsion/hubsdk/app/TranWallpaperColors;

    invoke-direct {v0}, Lcom/transsion/hubsdk/app/TranWallpaperColors;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubWallpaperColors;->mTranWallpaperColors:Lcom/transsion/hubsdk/app/TranWallpaperColors;

    return-void
.end method


# virtual methods
.method public getAllColors(Landroid/app/WallpaperColors;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/WallpaperColors;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubWallpaperColors;->mTranWallpaperColors:Lcom/transsion/hubsdk/app/TranWallpaperColors;

    if-eqz p0, :cond_9

    .line 21
    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/app/TranWallpaperColors;->getAllColors(Landroid/app/WallpaperColors;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method
