.class public Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor$IRecordStateCallback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor$IRecordStateCallback;

.field private final mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
        }
    .end annotation
.end field

.field private mRecording:Z

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;)Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor$IRecordStateCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->mCallback:Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor$IRecordStateCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmRecording(Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->mRecording:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor$1;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    return-void
.end method


# virtual methods
.method public init(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 4

    .line 75
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_14

    .line 77
    const-string v0, "key_record_state"

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 78
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_quick_video_action"

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_14
    return-void
.end method

.method public recording()Z
    .registers 1

    .line 67
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->mRecording:Z

    return p0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->mRecording:Z

    return-void
.end method

.method public setRecordStateCallback(Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor$IRecordStateCallback;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->mCallback:Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor$IRecordStateCallback;

    return-void
.end method

.method public unInit()V
    .registers 4

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_17

    .line 84
    const-string v1, "key_record_state"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_quick_video_action"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    :cond_17
    return-void
.end method
