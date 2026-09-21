.class final Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$ICaptureStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallbackWrapper"
.end annotation


# static fields
.field private static final MIN_CAPTURE_TIME:J = 0x78L


# instance fields
.field private final mCallbackCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mCaptureEnd:Z

.field private mCaptureStart:Z

.field private mCaptureStartTime:J

.field final synthetic this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;


# direct methods
.method static bridge synthetic -$$Nest$mreset(Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->reset()V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;)V
    .registers 3

    .line 127
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 125
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCallbackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private prefixLog(Ljava/lang/String;)V
    .registers 5

    .line 132
    invoke-static {}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 132
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private reset()V
    .registers 4

    const/4 v0, 0x0

    .line 202
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCaptureStart:Z

    .line 203
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCaptureEnd:Z

    const-wide/16 v1, 0x0

    .line 204
    iput-wide v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCaptureStartTime:J

    .line 205
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 206
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCallbackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method


# virtual methods
.method onCaptureEnd()V
    .registers 7

    .line 166
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCaptureEnd:Z

    const-string v1, ", mCallbackCount: "

    if-nez v0, :cond_52

    const/4 v0, 0x1

    .line 167
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCaptureEnd:Z

    .line 168
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCaptureStart:Z

    if-nez v0, :cond_13

    .line 169
    const-string v0, "ignore capture end when capture not started!"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->prefixLog(Ljava/lang/String;)V

    return-void

    .line 172
    :cond_13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCaptureStartTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_52

    const-wide/16 v4, 0x78

    cmp-long v0, v2, v4

    if-gez v0, :cond_52

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid capture end, mCaptureCount: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCallbackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->prefixLog(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_d8

    .line 177
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void

    .line 182
    :cond_52
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_5f

    .line 183
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 185
    :cond_5f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureEnd mCaptureCount: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCallbackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->prefixLog(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_a9

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCallbackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_a9

    .line 188
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCallbackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 189
    const-string v0, "reissue onNextReady"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->prefixLog(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->-$$Nest$fgetmCallback(Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;)Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$ICaptureStateCallback;

    move-result-object v0

    if-eqz v0, :cond_a9

    .line 192
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->-$$Nest$fgetmCallback(Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;)Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$ICaptureStateCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$ICaptureStateCallback;->onNextReady()V

    .line 195
    :cond_a9
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCallbackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ge v0, v1, :cond_d8

    .line 196
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCallbackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "correct mCallbackCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCallbackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->prefixLog(Ljava/lang/String;)V

    :cond_d8
    return-void
.end method

.method public onCaptureStart()V
    .registers 3

    .line 138
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCaptureStart:Z

    if-nez v0, :cond_d

    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCaptureStart:Z

    .line 140
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCaptureStartTime:J

    .line 142
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCallbackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCaptureStart mCaptureCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCallbackCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCallbackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->prefixLog(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->-$$Nest$fgetmCallback(Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;)Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$ICaptureStateCallback;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 147
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->-$$Nest$fgetmCallback(Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;)Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$ICaptureStateCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$ICaptureStateCallback;->onCaptureStart()V

    :cond_48
    return-void
.end method

.method public onNextReady()V
    .registers 3

    .line 156
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCallbackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_d

    .line 157
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCallbackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 159
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNextReady mCallbackCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCallbackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->prefixLog(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->-$$Nest$fgetmCallback(Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;)Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$ICaptureStateCallback;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 161
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->-$$Nest$fgetmCallback(Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;)Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$ICaptureStateCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$ICaptureStateCallback;->onNextReady()V

    :cond_34
    return-void
.end method
