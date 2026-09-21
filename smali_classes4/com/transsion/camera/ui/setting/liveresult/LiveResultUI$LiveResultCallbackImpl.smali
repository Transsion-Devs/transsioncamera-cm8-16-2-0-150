.class Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$LiveResultCallbackImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LiveResultCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)V
    .registers 2

    .line 163
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$LiveResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$LiveResultCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)V

    return-void
.end method


# virtual methods
.method public onDataCallback(Ljava/lang/Object;I)V
    .registers 3

    .line 166
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$LiveResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;

    check-cast p1, Lcom/transsion/camera/feature/setting/liveresult/Result;

    invoke-static {p2, p1}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->-$$Nest$fputmCameraResult(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;Lcom/transsion/camera/feature/setting/liveresult/Result;)V

    .line 167
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$LiveResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->-$$Nest$mupdateAllValue(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)V

    return-void
.end method
