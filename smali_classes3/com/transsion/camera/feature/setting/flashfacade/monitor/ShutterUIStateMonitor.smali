.class public Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor$IShutterStateCallback;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCallback:Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor$IShutterStateCallback;

.field private final mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
        }
    .end annotation
.end field

.field private mShutterGuideLayoutShow:Z

.field private mShutterProcessing:Z

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;)Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor$IShutterStateCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;->mCallback:Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor$IShutterStateCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmShutterGuideLayoutShow(Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;->mShutterGuideLayoutShow:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmShutterProcessing(Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;->mShutterProcessing:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 26
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ShutterStateMonitor"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor$1;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    return-void
.end method


# virtual methods
.method public init(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 4

    .line 96
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_14

    .line 98
    const-string v0, "key_shutter_guide_layout_action"

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 99
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_shutter_ui_state"

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_14
    return-void
.end method

.method public isShutterProcessing()Z
    .registers 1

    .line 87
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;->mShutterProcessing:Z

    return p0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;->mShutterGuideLayoutShow:Z

    .line 92
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;->mShutterProcessing:Z

    return-void
.end method

.method public setShutterStateCallback(Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor$IShutterStateCallback;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;->mCallback:Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor$IShutterStateCallback;

    return-void
.end method

.method public shutterGuideLayoutShow()Z
    .registers 1

    .line 83
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;->mShutterGuideLayoutShow:Z

    return p0
.end method

.method public unInit()V
    .registers 4

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_17

    .line 105
    const-string v1, "key_shutter_guide_layout_action"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_shutter_ui_state"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    :cond_17
    return-void
.end method
