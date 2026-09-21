.class Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment$IToastUICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;)V
    .registers 2

    .line 152
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment$1;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hideToast()V
    .registers 1

    .line 161
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment$1;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;

    invoke-static {p0}, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;->-$$Nest$fgetmToastUI(Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;)Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;->hideToast()V

    return-void
.end method

.method public showToast(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 2

    .line 156
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment$1;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;

    invoke-static {p0}, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;->-$$Nest$fgetmToastUI(Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;)Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;->showToast(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method
