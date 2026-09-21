.class Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/IValueChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;)V
    .registers 2

    .line 426
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$5;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged(Ljava/lang/String;)V
    .registers 3

    .line 429
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$5;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->-$$Nest$fgetmSeekBarChangeListener(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;)Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$SeekBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 430
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$5;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->-$$Nest$fgetmSeekBarChangeListener(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;)Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$SeekBarChangeListener;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$SeekBarChangeListener;->onProgressChanged(IZ)V

    :cond_16
    return-void
.end method
