.class Lcom/transsion/camera/feature/mode/professional/ProfessionalMode$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;)V
    .registers 2

    .line 831
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode$2;->this$0:Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 833
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode$2;->this$0:Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->access$100(Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "mCaptureStopListener click"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 834
    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->getPhysicalLastClickTime()[J

    move-result-object p1

    const/4 v0, 0x0

    .line 835
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    aput-wide v1, p1, v0

    .line 836
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode$2;->this$0:Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->-$$Nest$mcancelCapture(Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;)Z

    return-void
.end method
