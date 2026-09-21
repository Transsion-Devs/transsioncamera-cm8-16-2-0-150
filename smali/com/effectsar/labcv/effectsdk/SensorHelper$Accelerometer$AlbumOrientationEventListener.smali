.class Lcom/effectsar/labcv/effectsdk/SensorHelper$Accelerometer$AlbumOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/SensorHelper$Accelerometer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/effectsar/labcv/effectsdk/SensorHelper$Accelerometer;


# direct methods
.method public constructor <init>(Lcom/effectsar/labcv/effectsdk/SensorHelper$Accelerometer;Landroid/content/Context;)V
    .registers 3

    .line 203
    iput-object p1, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper$Accelerometer$AlbumOrientationEventListener;->this$1:Lcom/effectsar/labcv/effectsdk/SensorHelper$Accelerometer;

    .line 204
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/effectsar/labcv/effectsdk/SensorHelper$Accelerometer;Landroid/content/Context;I)V
    .registers 4

    .line 207
    iput-object p1, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper$Accelerometer$AlbumOrientationEventListener;->this$1:Lcom/effectsar/labcv/effectsdk/SensorHelper$Accelerometer;

    .line 208
    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .registers 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    goto :goto_19

    :cond_4
    add-int/lit8 p1, p1, 0x2d

    .line 218
    div-int/lit8 p1, p1, 0x5a

    mul-int/lit8 p1, p1, 0x5a

    rem-int/lit16 p1, p1, 0x168

    .line 219
    iget-object v0, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper$Accelerometer$AlbumOrientationEventListener;->this$1:Lcom/effectsar/labcv/effectsdk/SensorHelper$Accelerometer;

    # getter for: Lcom/effectsar/labcv/effectsdk/SensorHelper$Accelerometer;->mOrientation:I
    invoke-static {v0}, Lcom/effectsar/labcv/effectsdk/SensorHelper$Accelerometer;->access$700(Lcom/effectsar/labcv/effectsdk/SensorHelper$Accelerometer;)I

    move-result v0

    if-eq p1, v0, :cond_19

    .line 220
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper$Accelerometer$AlbumOrientationEventListener;->this$1:Lcom/effectsar/labcv/effectsdk/SensorHelper$Accelerometer;

    # setter for: Lcom/effectsar/labcv/effectsdk/SensorHelper$Accelerometer;->mOrientation:I
    invoke-static {p0, p1}, Lcom/effectsar/labcv/effectsdk/SensorHelper$Accelerometer;->access$702(Lcom/effectsar/labcv/effectsdk/SensorHelper$Accelerometer;I)I

    :cond_19
    :goto_19
    return-void
.end method
