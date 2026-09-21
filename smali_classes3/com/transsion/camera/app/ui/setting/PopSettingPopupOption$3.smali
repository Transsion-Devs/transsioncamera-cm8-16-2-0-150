.class Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->dismissPopupWithoutAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)V
    .registers 2

    .line 399
    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$3;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 1

    .line 402
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$3;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->doOnDismiss()V

    return-void
.end method
