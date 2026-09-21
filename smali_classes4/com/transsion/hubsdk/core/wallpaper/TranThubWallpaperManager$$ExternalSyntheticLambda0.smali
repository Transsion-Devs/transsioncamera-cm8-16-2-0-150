.class public final synthetic Lcom/transsion/hubsdk/core/wallpaper/TranThubWallpaperManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/core/wallpaper/TranThubWallpaperManager;

.field public final synthetic f$1:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/wallpaper/TranThubWallpaperManager;Landroid/content/ComponentName;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/wallpaper/TranThubWallpaperManager$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/hubsdk/core/wallpaper/TranThubWallpaperManager;

    iput-object p2, p0, Lcom/transsion/hubsdk/core/wallpaper/TranThubWallpaperManager$$ExternalSyntheticLambda0;->f$1:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/wallpaper/TranThubWallpaperManager$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/hubsdk/core/wallpaper/TranThubWallpaperManager;

    iget-object p0, p0, Lcom/transsion/hubsdk/core/wallpaper/TranThubWallpaperManager$$ExternalSyntheticLambda0;->f$1:Landroid/content/ComponentName;

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/core/wallpaper/TranThubWallpaperManager;->$r8$lambda$gxNg-m-FvS-5atznb-2omicvJ0E(Lcom/transsion/hubsdk/core/wallpaper/TranThubWallpaperManager;Landroid/content/ComponentName;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
