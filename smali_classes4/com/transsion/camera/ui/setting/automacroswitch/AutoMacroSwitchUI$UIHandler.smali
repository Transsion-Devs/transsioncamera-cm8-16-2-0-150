.class Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$UIHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation


# instance fields
.field private mMacroSwitchFlag:I

.field private final mUIReference:Ljava/lang/ref/WeakReference;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;)V
    .registers 3

    .line 121
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, -0x1

    .line 119
    iput v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$UIHandler;->mMacroSwitchFlag:I

    .line 122
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 127
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;

    if-nez v0, :cond_25

    .line 129
    invoke-static {}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UIHandler handleMessage autoMacroSwitchUI is null, return. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 132
    :cond_25
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_6a

    goto :goto_69

    .line 156
    :pswitch_2b
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->-$$Nest$mupdateToggleImage(Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;)V

    return-void

    .line 153
    :pswitch_2f
    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->hideEntryView()V

    return-void

    .line 134
    :pswitch_33
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_69

    const/4 v1, 0x1

    if-ne p1, v1, :cond_5b

    .line 137
    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->showEntryView()V

    .line 138
    iget v2, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$UIHandler;->mMacroSwitchFlag:I

    if-eq v2, p1, :cond_5e

    .line 139
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(I)V

    .line 140
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setAutoMacroSwitch(Ljava/lang/String;)V

    goto :goto_5e

    .line 143
    :cond_5b
    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->hideEntryView()V

    .line 145
    :cond_5e
    :goto_5e
    iget v2, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$UIHandler;->mMacroSwitchFlag:I

    if-nez v2, :cond_67

    if-ne p1, v1, :cond_67

    .line 147
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->-$$Nest$mupdateToggleImage(Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;)V

    .line 149
    :cond_67
    iput p1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$UIHandler;->mMacroSwitchFlag:I

    :cond_69
    :goto_69
    return-void

    :pswitch_data_6a
    .packed-switch 0x65
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
    .end packed-switch
.end method
