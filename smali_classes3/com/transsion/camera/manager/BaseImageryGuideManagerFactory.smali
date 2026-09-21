.class public Lcom/transsion/camera/manager/BaseImageryGuideManagerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createImageryGuideManager()Lcom/transsion/camera/manager/BaseImageryGuideManager;
    .registers 1

    .line 5
    new-instance p0, Lcom/transsion/camera/manager/BaseImageryGuideManager;

    invoke-direct {p0}, Lcom/transsion/camera/manager/BaseImageryGuideManager;-><init>()V

    return-object p0
.end method
