.class Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/pmaster/listener/MakeUpItemSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot$1;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMakeUpItemSelect(Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;)V
    .registers 4

    .line 72
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot$1;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->-$$Nest$mhandleMakeUpItemSelected(Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;)V

    .line 73
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot$1;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

    const-string v0, "key_makeup_remember"

    const/4 v1, 0x0

    # invokes: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->rememberValue(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->access$000(Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot$1;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mIsFaceBeautyConflictWithMakeUp:Z
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->access$100(Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot$1;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

    const-string p1, "key_facebeauty_remember"

    # invokes: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->rememberValue(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p0, p1, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->access$200(Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    return-void
.end method
