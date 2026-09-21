.class Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI$UIHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation


# instance fields
.field private final mReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;)V
    .registers 3

    .line 152
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 153
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI$UIHandler;->mReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 158
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI$UIHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;

    if-nez p0, :cond_25

    .line 160
    invoke-static {}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UIHandler handleMessage FunVideoUI is null, return. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 163
    :cond_25
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x8

    packed-switch p1, :pswitch_data_82

    goto :goto_6b

    .line 190
    :pswitch_2d
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->-$$Nest$fgetmRecordingTimeViewGroup(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;)Lcom/transsion/camera/app/ui/widget/RotateLayout;

    move-result-object p1

    if-eqz p1, :cond_6b

    .line 191
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->-$$Nest$fgetmRecordingTimeViewGroup(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;)Lcom/transsion/camera/app/ui/widget/RotateLayout;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 169
    :pswitch_3b
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->-$$Nest$mupdateRecordingTimeBarLayout(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;)V

    .line 170
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->-$$Nest$fgetmRecordingRootView(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4c

    .line 171
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->-$$Nest$fgetmRecordingRootView(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 173
    :cond_4c
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->-$$Nest$fgetmRecordingTimeViewGroup(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;)Lcom/transsion/camera/app/ui/widget/RotateLayout;

    move-result-object p1

    if-eqz p1, :cond_59

    .line 174
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->-$$Nest$fgetmRecordingTimeViewGroup(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;)Lcom/transsion/camera/app/ui/widget/RotateLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 176
    :cond_59
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->-$$Nest$mringScreenLightUpdateUI(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;)V

    .line 177
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->-$$Nest$fgetmRecordingTimeView(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_6b

    .line 178
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->-$$Nest$fgetmRecordingTimeView(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;)Landroid/widget/TextView;

    move-result-object p0

    const-string p1, "00:00:00"

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6b
    :goto_6b
    return-void

    .line 183
    :pswitch_6c
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->-$$Nest$fgetmRecordingTimeViewGroup(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;)Lcom/transsion/camera/app/ui/widget/RotateLayout;

    move-result-object p1

    if-eqz p1, :cond_79

    .line 184
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->-$$Nest$fgetmRecordingTimeViewGroup(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;)Lcom/transsion/camera/app/ui/widget/RotateLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_79
    const/4 p1, -0x1

    .line 186
    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->-$$Nest$fputmRecordingOrientation(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;I)V

    return-void

    .line 165
    :pswitch_7e
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->-$$Nest$mupdateRecordingTime(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;)V

    return-void

    :pswitch_data_82
    .packed-switch 0x64
        :pswitch_7e
        :pswitch_6c
        :pswitch_3b
        :pswitch_2d
    .end packed-switch
.end method
