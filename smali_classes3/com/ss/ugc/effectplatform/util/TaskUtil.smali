.class public final Lcom/ss/ugc/effectplatform/util/TaskUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/ss/ugc/effectplatform/util/TaskUtil;

.field private static final id:Lbytekn/foundation/concurrent/lock/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 10
    new-instance v0, Lcom/ss/ugc/effectplatform/util/TaskUtil;

    invoke-direct {v0}, Lcom/ss/ugc/effectplatform/util/TaskUtil;-><init>()V

    sput-object v0, Lcom/ss/ugc/effectplatform/util/TaskUtil;->INSTANCE:Lcom/ss/ugc/effectplatform/util/TaskUtil;

    .line 11
    new-instance v0, Lbytekn/foundation/concurrent/lock/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lbytekn/foundation/concurrent/lock/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/ss/ugc/effectplatform/util/TaskUtil;->id:Lbytekn/foundation/concurrent/lock/AtomicLong;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final generateTaskId()Ljava/lang/String;
    .registers 3

    .line 13
    sget-object p0, Lcom/ss/ugc/effectplatform/util/TaskUtil;->id:Lbytekn/foundation/concurrent/lock/AtomicLong;

    invoke-virtual {p0}, Lbytekn/foundation/concurrent/lock/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
