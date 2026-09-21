.class public Lcom/google/common/flogger/parser/DefaultPrintfMessageParser;
.super Lcom/google/common/flogger/parser/PrintfMessageParser;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lcom/google/common/flogger/parser/PrintfMessageParser;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Lcom/google/common/flogger/parser/DefaultPrintfMessageParser;

    invoke-direct {v0}, Lcom/google/common/flogger/parser/DefaultPrintfMessageParser;-><init>()V

    sput-object v0, Lcom/google/common/flogger/parser/DefaultPrintfMessageParser;->INSTANCE:Lcom/google/common/flogger/parser/PrintfMessageParser;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Lcom/google/common/flogger/parser/PrintfMessageParser;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/common/flogger/parser/PrintfMessageParser;
    .registers 1

    .line 42
    sget-object v0, Lcom/google/common/flogger/parser/DefaultPrintfMessageParser;->INSTANCE:Lcom/google/common/flogger/parser/PrintfMessageParser;

    return-object v0
.end method

.method private static wrapHexParameter(Lcom/google/common/flogger/backend/FormatOptions;I)Lcom/google/common/flogger/parameter/Parameter;
    .registers 3

    .line 105
    new-instance v0, Lcom/google/common/flogger/parser/DefaultPrintfMessageParser$1;

    invoke-direct {v0, p0, p1, p0}, Lcom/google/common/flogger/parser/DefaultPrintfMessageParser$1;-><init>(Lcom/google/common/flogger/backend/FormatOptions;ILcom/google/common/flogger/backend/FormatOptions;)V

    return-object v0
.end method


# virtual methods
.method public parsePrintfTerm(Lcom/google/common/flogger/parser/MessageBuilder;ILjava/lang/String;III)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/flogger/parser/MessageBuilder<",
            "*>;I",
            "Ljava/lang/String;",
            "III)I"
        }
    .end annotation

    add-int/lit8 p0, p6, 0x1

    .line 60
    invoke-virtual {p3, p6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-nez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    move v1, v2

    .line 62
    :goto_e
    invoke-static {p3, p5, p6, v1}, Lcom/google/common/flogger/backend/FormatOptions;->parse(Ljava/lang/String;IIZ)Lcom/google/common/flogger/backend/FormatOptions;

    move-result-object p5

    .line 65
    invoke-static {v0}, Lcom/google/common/flogger/backend/FormatChar;->of(C)Lcom/google/common/flogger/backend/FormatChar;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 67
    invoke-virtual {p5, v1}, Lcom/google/common/flogger/backend/FormatOptions;->areValidFor(Lcom/google/common/flogger/backend/FormatChar;)Z

    move-result p6

    if-eqz p6, :cond_23

    .line 70
    invoke-static {p2, v1, p5}, Lcom/google/common/flogger/parameter/SimpleParameter;->of(ILcom/google/common/flogger/backend/FormatChar;Lcom/google/common/flogger/backend/FormatOptions;)Lcom/google/common/flogger/parameter/SimpleParameter;

    move-result-object p2

    goto :goto_72

    .line 68
    :cond_23
    const-string p1, "invalid format specifier"

    invoke-static {p1, p3, p4, p0}, Lcom/google/common/flogger/parser/ParseException;->withBounds(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p0

    throw p0

    :cond_2a
    const/16 v1, 0x74

    const/16 v3, 0xa0

    .line 71
    const-string v4, "invalid format specification"

    if-eq v0, v1, :cond_55

    const/16 v1, 0x54

    if-ne v0, v1, :cond_37

    goto :goto_55

    :cond_37
    const/16 p6, 0x68

    if-eq v0, p6, :cond_45

    const/16 p6, 0x48

    if-ne v0, p6, :cond_40

    goto :goto_45

    .line 95
    :cond_40
    invoke-static {v4, p3, p4, p0}, Lcom/google/common/flogger/parser/ParseException;->withBounds(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p0

    throw p0

    .line 89
    :cond_45
    :goto_45
    invoke-virtual {p5, v3, v2}, Lcom/google/common/flogger/backend/FormatOptions;->validate(IZ)Z

    move-result p6

    if-eqz p6, :cond_50

    .line 93
    invoke-static {p5, p2}, Lcom/google/common/flogger/parser/DefaultPrintfMessageParser;->wrapHexParameter(Lcom/google/common/flogger/backend/FormatOptions;I)Lcom/google/common/flogger/parameter/Parameter;

    move-result-object p2

    goto :goto_72

    .line 90
    :cond_50
    invoke-static {v4, p3, p4, p0}, Lcom/google/common/flogger/parser/ParseException;->withBounds(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p0

    throw p0

    .line 72
    :cond_55
    :goto_55
    invoke-virtual {p5, v3, v2}, Lcom/google/common/flogger/backend/FormatOptions;->validate(IZ)Z

    move-result v0

    if-eqz v0, :cond_84

    add-int/lit8 p6, p6, 0x2

    .line 78
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p6, v0, :cond_7d

    .line 81
    invoke-virtual {p3, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/common/flogger/parameter/DateTimeFormat;->of(C)Lcom/google/common/flogger/parameter/DateTimeFormat;

    move-result-object v0

    if-eqz v0, :cond_76

    .line 85
    invoke-static {v0, p5, p2}, Lcom/google/common/flogger/parameter/DateTimeParameter;->of(Lcom/google/common/flogger/parameter/DateTimeFormat;Lcom/google/common/flogger/backend/FormatOptions;I)Lcom/google/common/flogger/parameter/Parameter;

    move-result-object p2

    move p0, p6

    .line 98
    :goto_72
    invoke-virtual {p1, p4, p0, p2}, Lcom/google/common/flogger/parser/MessageBuilder;->addParameter(IILcom/google/common/flogger/parameter/Parameter;)V

    return p0

    .line 83
    :cond_76
    const-string p1, "illegal date/time conversion"

    invoke-static {p1, p3, p0}, Lcom/google/common/flogger/parser/ParseException;->atPosition(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p0

    throw p0

    .line 79
    :cond_7d
    const-string p0, "truncated format specifier"

    invoke-static {p0, p3, p4}, Lcom/google/common/flogger/parser/ParseException;->atPosition(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p0

    throw p0

    .line 73
    :cond_84
    invoke-static {v4, p3, p4, p0}, Lcom/google/common/flogger/parser/ParseException;->withBounds(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p0

    throw p0
.end method
