.class Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$UIHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation


# instance fields
.field private final mUIReference:Ljava/lang/ref/WeakReference;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;)V
    .registers 3

    .line 167
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 168
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;Lcom/transsion/camera/app/ui/AbstractIntentReviewUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$UIHandler;-><init>(Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 173
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;

    if-nez p0, :cond_25

    .line 175
    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UIHandler handleMessage intentReviewUI is null, return. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 179
    :cond_25
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_4c

    return-void

    .line 190
    :pswitch_2b
    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->-$$Nest$mdoHideActionView(Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;)V

    return-void

    .line 187
    :pswitch_2f
    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->-$$Nest$mdoShowActionView(Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;)V

    return-void

    .line 193
    :pswitch_33
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->-$$Nest$mdoUpdateReviewViewState(Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;Z)V

    return-void

    .line 184
    :pswitch_3f
    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->-$$Nest$mdoHideReviewView(Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;)V

    return-void

    .line 181
    :pswitch_43
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->-$$Nest$mdoShowReviewView(Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;Landroid/graphics/Bitmap;)V

    return-void

    nop

    :pswitch_data_4c
    .packed-switch 0x64
        :pswitch_43
        :pswitch_3f
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
    .end packed-switch
.end method
