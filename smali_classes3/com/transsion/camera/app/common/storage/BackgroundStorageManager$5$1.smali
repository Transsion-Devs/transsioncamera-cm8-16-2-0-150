.class Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$5$1;
.super Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$5;->onFileSaved(Landroid/net/Uri;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$5;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$5;)V
    .registers 2

    .line 514
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$5$1;->this$1:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$5;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener2;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileSaved(Landroid/net/Uri;I)V
    .registers 8

    .line 517
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$5$1;->this$1:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$5;

    iget-object v1, v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$5;->this$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    new-instance v2, Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;

    iget-wide v3, v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$5;->val$timestamp:J

    const/4 v0, 0x0

    invoke-direct {v2, v3, v4, p1, v0}, Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;-><init>(JLandroid/net/Uri;Landroid/content/ContentValues;)V

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$5$1;->this$1:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$5;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$5;->val$listener:Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;

    invoke-static {v1, v2, p2, p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$monSaveHighQualityJpeg(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;ILcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;)V

    return-void
.end method
