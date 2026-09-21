.class public Lcom/ss/android/ttve/model/VEFrame$YUVPlansFrame;
.super Lcom/ss/android/ttve/model/VEFrame$FrameBase;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttve/model/VEFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "YUVPlansFrame"
.end annotation


# instance fields
.field planes:Lcom/ss/android/ttve/model/TEPlane;


# direct methods
.method public constructor <init>(Lcom/ss/android/ttve/model/TEPlane;)V
    .registers 2

    .line 128
    invoke-direct {p0}, Lcom/ss/android/ttve/model/VEFrame$FrameBase;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/ss/android/ttve/model/VEFrame$YUVPlansFrame;->planes:Lcom/ss/android/ttve/model/TEPlane;

    return-void
.end method


# virtual methods
.method public getPlanes()[Landroid/media/Image$Plane;
    .registers 1

    .line 133
    iget-object p0, p0, Lcom/ss/android/ttve/model/VEFrame$YUVPlansFrame;->planes:Lcom/ss/android/ttve/model/TEPlane;

    invoke-virtual {p0}, Lcom/ss/android/ttve/model/TEPlane;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p0

    return-object p0
.end method
