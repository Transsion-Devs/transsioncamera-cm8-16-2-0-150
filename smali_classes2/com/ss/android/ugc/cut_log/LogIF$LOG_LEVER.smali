.class public final enum Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ugc/cut_log/LogIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LOG_LEVER"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;

.field public static final enum DEBUG:Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;

.field public static final enum ERROR:Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;

.field public static final enum INFO:Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;

.field public static final enum VERBOSE:Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;

.field public static final enum WARNING:Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;


# instance fields
.field private final lever:I


# direct methods
.method private static final synthetic $values()[Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;
    .registers 5

    sget-object v0, Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;->VERBOSE:Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;

    sget-object v1, Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;->DEBUG:Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;

    sget-object v2, Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;->INFO:Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;

    sget-object v3, Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;->WARNING:Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;

    sget-object v4, Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;->ERROR:Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 17
    new-instance v0, Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;

    const-string v1, "VERBOSE"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;->VERBOSE:Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;

    new-instance v0, Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;

    const-string v1, "DEBUG"

    const/4 v2, 0x1

    const/4 v4, 0x3

    invoke-direct {v0, v1, v2, v4}, Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;->DEBUG:Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;

    new-instance v0, Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;

    const-string v1, "INFO"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;->INFO:Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;

    new-instance v0, Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;

    const-string v1, "WARNING"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v4, v3}, Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;->WARNING:Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;

    new-instance v0, Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;

    const-string v1, "ERROR"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;->ERROR:Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;

    invoke-static {}, Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;->$values()[Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;

    move-result-object v0

    sput-object v0, Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;->$VALUES:[Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;->lever:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;
    .registers 2

    const-class v0, Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;
    .registers 1

    sget-object v0, Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;->$VALUES:[Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;

    return-object v0
.end method


# virtual methods
.method public final getLever()I
    .registers 1

    .line 16
    iget p0, p0, Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;->lever:I

    return p0
.end method
