.class Lcom/ss/android/vesdk/TECameraVideoRecorder$58;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/common/Common$IShotScreenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;->shotScreen(Lcom/ss/android/vesdk/VEShotScreenSettings;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

.field final synthetic val$settings:Lcom/ss/android/vesdk/VEShotScreenSettings;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VEShotScreenSettings;)V
    .registers 3

    .line 4270
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$58;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$58;->val$settings:Lcom/ss/android/vesdk/VEShotScreenSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShotScreen(I)V
    .registers 3

    .line 4273
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$58;->val$settings:Lcom/ss/android/vesdk/VEShotScreenSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEShotScreenSettings;->getScreenCallback()Lcom/ss/android/vesdk/VERecorder$IShotScreenCallback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 4274
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$58;->val$settings:Lcom/ss/android/vesdk/VEShotScreenSettings;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEShotScreenSettings;->getScreenCallback()Lcom/ss/android/vesdk/VERecorder$IShotScreenCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/VERecorder$IShotScreenCallback;->onShotScreen(I)V

    :cond_11
    return-void
.end method
