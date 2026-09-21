.class Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$OnSeekBarChangeListener;


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

    .line 440
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$6;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(IZ)V
    .registers 4

    .line 443
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$6;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->-$$Nest$fgetmSeekBarChangeListener(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;)Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$SeekBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 444
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$6;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->-$$Nest$fgetmSeekBarChangeListener(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;)Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$SeekBarChangeListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$SeekBarChangeListener;->onProgressChanged(IZ)V

    :cond_11
    return-void
.end method
