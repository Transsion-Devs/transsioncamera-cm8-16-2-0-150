.class Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;)V
    .registers 2

    .line 144
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$5;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(IZ)V
    .registers 3

    .line 147
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$5;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->-$$Nest$fgetmBottomUI(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;)Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    move-result-object p2

    if-eqz p2, :cond_11

    .line 148
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$5;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->-$$Nest$fgetmBottomUI(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;)Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->progressChanged(I)V

    :cond_11
    return-void
.end method
