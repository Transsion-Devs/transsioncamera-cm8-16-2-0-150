.class public final Lcom/google/common/flogger/parser/ParseException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# static fields
.field private static final ELLIPSIS:Ljava/lang/String; = "..."

.field private static final SNIPPET_LENGTH:I = 0x5


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 85
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static atPosition(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/common/flogger/parser/ParseException;
    .registers 5

    .line 57
    new-instance v0, Lcom/google/common/flogger/parser/ParseException;

    add-int/lit8 v1, p2, 0x1

    invoke-static {p0, p1, p2, v1}, Lcom/google/common/flogger/parser/ParseException;->msg(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/google/common/flogger/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static generic(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/flogger/parser/ParseException;
    .registers 3

    .line 81
    new-instance v0, Lcom/google/common/flogger/parser/ParseException;

    invoke-direct {v0, p0, p1}, Lcom/google/common/flogger/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static msg(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .registers 7

    if-gez p3, :cond_6

    .line 91
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    .line 93
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string p0, "..."

    const/16 v1, 0x8

    if-le p2, v1, :cond_1f

    .line 95
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p2, -0x5

    invoke-virtual {v0, p1, v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_23

    :cond_1f
    const/4 v2, 0x0

    .line 97
    invoke-virtual {v0, p1, v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :goto_23
    const/16 v2, 0x5b

    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x5d

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, p3

    if-le p2, v1, :cond_44

    add-int/lit8 p2, p3, 0x5

    .line 101
    invoke-virtual {v0, p1, p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4b

    .line 103
    :cond_44
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v0, p1, p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 105
    :goto_4b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static withBounds(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/common/flogger/parser/ParseException;
    .registers 5

    .line 45
    new-instance v0, Lcom/google/common/flogger/parser/ParseException;

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/flogger/parser/ParseException;->msg(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/google/common/flogger/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static withStartPosition(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/common/flogger/parser/ParseException;
    .registers 5

    .line 71
    new-instance v0, Lcom/google/common/flogger/parser/ParseException;

    const/4 v1, -0x1

    invoke-static {p0, p1, p2, v1}, Lcom/google/common/flogger/parser/ParseException;->msg(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/google/common/flogger/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized fillInStackTrace()Ljava/lang/Throwable;
    .registers 1

    monitor-enter p0

    .line 113
    monitor-exit p0

    return-object p0
.end method
