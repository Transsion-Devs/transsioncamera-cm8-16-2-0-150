.class Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$ContrastListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mTag:I

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;)V
    .registers 2

    .line 164
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$4;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 165
    iput p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$4;->mTag:I

    return-void
.end method


# virtual methods
.method public closeContrast(ZI)V
    .registers 5

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$4;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->-$$Nest$fgetmBottomUI(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;)Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    move-result-object v0

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$4;->mTag:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$4;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->-$$Nest$fgetmBottomUI(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;)Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->closeContrast(ZI)V

    .line 179
    iput v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$4;->mTag:I

    :cond_18
    return-void
.end method

.method public getContrastTag()I
    .registers 1

    .line 185
    iget p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$4;->mTag:I

    return p0
.end method

.method public openContrast(I)V
    .registers 3

    .line 168
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$4;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->-$$Nest$fgetmBottomUI(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;)Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$4;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->-$$Nest$fgetmBottomUI(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;)Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->openContrast(I)V

    .line 170
    iput p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$4;->mTag:I

    :cond_13
    return-void
.end method
