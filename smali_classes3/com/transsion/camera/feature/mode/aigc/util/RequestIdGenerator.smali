.class public final Lcom/transsion/camera/feature/mode/aigc/util/RequestIdGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CHARACTER_SET:Ljava/lang/String; = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

.field private static final REQUEST_ID_LENGTH:I = 0x20

.field private static final REQUEST_ID_PREFIX_LENGTH:I = 0x3

.field private static final REQUEST_ID_SUFFIX_LENGTH:I = 0x8

.field private static final SPLIT_CHARACTER:Ljava/lang/String; = "_"

.field private static final TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 30
    const-string/jumbo v0, "yyyyMMdd_HHmmss_SSS"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/aigc/util/RequestIdGenerator;->TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendRandom(Ljava/lang/StringBuilder;Ljava/util/concurrent/ThreadLocalRandom;I)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_15

    const/16 v1, 0x3e

    .line 52
    invoke-virtual {p1, v1}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result v1

    .line 53
    const-string v2, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    return-void
.end method

.method public static generateRequestId()Ljava/lang/String;
    .registers 5

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 35
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v1

    const/4 v2, 0x3

    .line 37
    invoke-static {v0, v1, v2}, Lcom/transsion/camera/feature/mode/aigc/util/RequestIdGenerator;->appendRandom(Ljava/lang/StringBuilder;Ljava/util/concurrent/ThreadLocalRandom;I)V

    .line 39
    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v3

    sget-object v4, Lcom/transsion/camera/feature/mode/aigc/util/RequestIdGenerator;->TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v3, v4}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x8

    .line 45
    invoke-static {v0, v1, v2}, Lcom/transsion/camera/feature/mode/aigc/util/RequestIdGenerator;->appendRandom(Ljava/lang/StringBuilder;Ljava/util/concurrent/ThreadLocalRandom;I)V

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
