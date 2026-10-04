.class final enum Lcom/google/gson/ToNumberPolicy$3;
.super Lcom/google/gson/ToNumberPolicy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/ToNumberPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, v0}, Lcom/google/gson/ToNumberPolicy;-><init>(Ljava/lang/String;ILcom/google/gson/ToNumberPolicy$1;)V

    return-void
.end method

.method private parseAsDouble(Ljava/lang/String;Lcom/google/gson/stream/JsonReader;)Ljava/lang/Number;
    .registers 7

    .line 84
    const-string p0, "; at path "

    :try_start_2
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Double;->isInfinite()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {v0}, Ljava/lang/Double;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_15

    :catch_13
    move-exception v0

    goto :goto_3d

    :cond_15
    :goto_15
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->isLenient()Z

    move-result v1

    if-eqz v1, :cond_1c

    :cond_1b
    return-object v0

    .line 86
    :cond_1c
    new-instance v1, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSON forbids NaN and infinities: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->getPreviousPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_3d} :catch_13

    .line 91
    :goto_3d
    new-instance v1, Lcom/google/gson/JsonParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot parse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->getPreviousPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public readNumber(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Number;
    .registers 5

    .line 70
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_11

    .line 72
    invoke-direct {p0, v0, p1}, Lcom/google/gson/ToNumberPolicy$3;->parseAsDouble(Ljava/lang/String;Lcom/google/gson/stream/JsonReader;)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    .line 75
    :cond_11
    :try_start_11
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_19} :catch_1a

    return-object p0

    .line 77
    :catch_1a
    invoke-direct {p0, v0, p1}, Lcom/google/gson/ToNumberPolicy$3;->parseAsDouble(Ljava/lang/String;Lcom/google/gson/stream/JsonReader;)Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method
