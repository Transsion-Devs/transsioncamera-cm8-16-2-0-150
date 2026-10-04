.class Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;)V
    .registers 2

    .line 481
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 483
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;

    # invokes: Lcom/transsion/camera/app/common/mode/CommonVideoMode;->videoSnapShot()V
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->access$200(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;)V

    .line 484
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->startCapture()V

    return-void
.end method
