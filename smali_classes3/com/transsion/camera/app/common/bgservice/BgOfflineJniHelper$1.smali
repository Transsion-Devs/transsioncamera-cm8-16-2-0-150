.class Lcom/transsion/camera/app/common/bgservice/BgOfflineJniHelper$1;
.super Lcom/transsion/camera/adapter/platformcamera/OfflineImageAvaliableListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/bgservice/BgOfflineJniHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/bgservice/BgOfflineJniHelper;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/bgservice/BgOfflineJniHelper;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/transsion/camera/app/common/bgservice/BgOfflineJniHelper$1;->this$0:Lcom/transsion/camera/app/common/bgservice/BgOfflineJniHelper;

    invoke-direct {p0}, Lcom/transsion/camera/adapter/platformcamera/OfflineImageAvaliableListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .registers 2

    return-void
.end method
