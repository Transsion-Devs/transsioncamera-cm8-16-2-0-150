.class Lcom/ss/android/vesdk/TECameraVideoRecorder$50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/common/Common$IShotScreenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;->shotScreen(Ljava/lang/String;IIZZLandroid/graphics/Bitmap$CompressFormat;Lcom/ss/android/vesdk/VERecorder$IShotScreenCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

.field final synthetic val$needPreviewAfterShotScreen:Z

.field final synthetic val$screenCallback:Lcom/ss/android/vesdk/VERecorder$IShotScreenCallback;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VERecorder$IShotScreenCallback;Z)V
    .registers 4

    .line 4085
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$50;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$50;->val$screenCallback:Lcom/ss/android/vesdk/VERecorder$IShotScreenCallback;

    iput-boolean p3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$50;->val$needPreviewAfterShotScreen:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShotScreen(I)V
    .registers 2

    .line 4088
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$50;->val$screenCallback:Lcom/ss/android/vesdk/VERecorder$IShotScreenCallback;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/VERecorder$IShotScreenCallback;->onShotScreen(I)V

    return-void
.end method
