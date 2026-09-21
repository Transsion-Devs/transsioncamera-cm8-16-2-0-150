.class Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$UIHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation


# instance fields
.field private final mUIReference:Ljava/lang/ref/WeakReference;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;)V
    .registers 3

    .line 874
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 875
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$UIHandler;-><init>(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 880
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;

    if-nez p0, :cond_25

    .line 882
    invoke-static {}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UIHandler handleMessage settingUI is null, return. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 886
    :cond_25
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_35

    const/16 p1, 0x65

    if-eq v0, p1, :cond_30

    return-void

    :cond_30
    const/4 p1, 0x0

    .line 892
    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->-$$Nest$mexitSettingFragment(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;Ljava/lang/String;)V

    return-void

    .line 888
    :cond_35
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 889
    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->-$$Nest$mdoValueChange(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;Ljava/lang/String;)V

    return-void
.end method
