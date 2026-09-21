.class Lcom/transsion/camera/app/QuickActivity$3;
.super Lcom/transsion/camera/utils/threads/WorkTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/QuickActivity;->startWakeUpScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/QuickActivity;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/QuickActivity;Ljava/lang/String;)V
    .registers 3

    .line 402
    iput-object p1, p0, Lcom/transsion/camera/app/QuickActivity$3;->this$0:Lcom/transsion/camera/app/QuickActivity;

    invoke-direct {p0, p2}, Lcom/transsion/camera/utils/threads/WorkTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doProcess()V
    .registers 1

    .line 405
    iget-object p0, p0, Lcom/transsion/camera/app/QuickActivity$3;->this$0:Lcom/transsion/camera/app/QuickActivity;

    invoke-static {p0}, Lcom/transsion/camera/app/QuickActivity;->-$$Nest$mwakeUpScreen(Lcom/transsion/camera/app/QuickActivity;)V

    return-void
.end method
