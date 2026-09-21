.class public Lcom/transsion/camera/feature/imageryguide/ImageryGuideManagerFactory;
.super Lcom/transsion/camera/manager/BaseImageryGuideManagerFactory;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Lcom/transsion/camera/manager/BaseImageryGuideManagerFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createImageryGuideManager()Lcom/transsion/camera/manager/BaseImageryGuideManager;
    .registers 1

    .line 8
    new-instance p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;

    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;-><init>()V

    return-object p0
.end method
