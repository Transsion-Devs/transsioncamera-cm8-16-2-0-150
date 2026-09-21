.class public Lcom/google/common/flogger/parameter/BraceStyleParameter;
.super Lcom/google/common/flogger/parameter/Parameter;
.source "SourceFile"


# static fields
.field private static final DEFAULT_PARAMETERS:[Lcom/google/common/flogger/parameter/BraceStyleParameter;

.field private static final MAX_CACHED_PARAMETERS:I = 0xa

.field private static final WITH_GROUPING:Lcom/google/common/flogger/backend/FormatOptions;

.field private static final prototypeMessageFormatter:Ljava/text/MessageFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v0, 0x10

    const/4 v1, -0x1

    .line 34
    invoke-static {v0, v1, v1}, Lcom/google/common/flogger/backend/FormatOptions;->of(III)Lcom/google/common/flogger/backend/FormatOptions;

    move-result-object v0

    sput-object v0, Lcom/google/common/flogger/parameter/BraceStyleParameter;->WITH_GROUPING:Lcom/google/common/flogger/backend/FormatOptions;

    .line 39
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "{0}"

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/google/common/flogger/parameter/BraceStyleParameter;->prototypeMessageFormatter:Ljava/text/MessageFormat;

    const/16 v0, 0xa

    .line 49
    new-array v1, v0, [Lcom/google/common/flogger/parameter/BraceStyleParameter;

    sput-object v1, Lcom/google/common/flogger/parameter/BraceStyleParameter;->DEFAULT_PARAMETERS:[Lcom/google/common/flogger/parameter/BraceStyleParameter;

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_29

    .line 51
    sget-object v2, Lcom/google/common/flogger/parameter/BraceStyleParameter;->DEFAULT_PARAMETERS:[Lcom/google/common/flogger/parameter/BraceStyleParameter;

    new-instance v3, Lcom/google/common/flogger/parameter/BraceStyleParameter;

    invoke-direct {v3, v1}, Lcom/google/common/flogger/parameter/BraceStyleParameter;-><init>(I)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_29
    return-void
.end method

.method private constructor <init>(I)V
    .registers 3

    .line 69
    invoke-static {}, Lcom/google/common/flogger/backend/FormatOptions;->getDefault()Lcom/google/common/flogger/backend/FormatOptions;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/common/flogger/parameter/Parameter;-><init>(Lcom/google/common/flogger/backend/FormatOptions;I)V

    return-void
.end method

.method public static of(I)Lcom/google/common/flogger/parameter/BraceStyleParameter;
    .registers 2

    const/16 v0, 0xa

    if-ge p0, v0, :cond_9

    .line 64
    sget-object v0, Lcom/google/common/flogger/parameter/BraceStyleParameter;->DEFAULT_PARAMETERS:[Lcom/google/common/flogger/parameter/BraceStyleParameter;

    aget-object p0, v0, p0

    return-object p0

    .line 65
    :cond_9
    new-instance v0, Lcom/google/common/flogger/parameter/BraceStyleParameter;

    invoke-direct {v0, p0}, Lcom/google/common/flogger/parameter/BraceStyleParameter;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method protected accept(Lcom/google/common/flogger/parameter/ParameterVisitor;Ljava/lang/Object;)V
    .registers 6

    .line 75
    sget-object v0, Lcom/google/common/flogger/backend/FormatType;->INTEGRAL:Lcom/google/common/flogger/backend/FormatType;

    invoke-virtual {v0, p2}, Lcom/google/common/flogger/backend/FormatType;->canFormat(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 76
    sget-object p0, Lcom/google/common/flogger/backend/FormatChar;->DECIMAL:Lcom/google/common/flogger/backend/FormatChar;

    sget-object v0, Lcom/google/common/flogger/parameter/BraceStyleParameter;->WITH_GROUPING:Lcom/google/common/flogger/backend/FormatOptions;

    invoke-interface {p1, p2, p0, v0}, Lcom/google/common/flogger/parameter/ParameterVisitor;->visit(Ljava/lang/Object;Lcom/google/common/flogger/backend/FormatChar;Lcom/google/common/flogger/backend/FormatOptions;)V

    return-void

    .line 77
    :cond_10
    sget-object v0, Lcom/google/common/flogger/backend/FormatType;->FLOAT:Lcom/google/common/flogger/backend/FormatType;

    invoke-virtual {v0, p2}, Lcom/google/common/flogger/backend/FormatType;->canFormat(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 81
    sget-object p0, Lcom/google/common/flogger/backend/FormatChar;->FLOAT:Lcom/google/common/flogger/backend/FormatChar;

    sget-object v0, Lcom/google/common/flogger/parameter/BraceStyleParameter;->WITH_GROUPING:Lcom/google/common/flogger/backend/FormatOptions;

    invoke-interface {p1, p2, p0, v0}, Lcom/google/common/flogger/parameter/ParameterVisitor;->visit(Ljava/lang/Object;Lcom/google/common/flogger/backend/FormatChar;Lcom/google/common/flogger/backend/FormatOptions;)V

    return-void

    .line 82
    :cond_20
    instance-of v0, p2, Ljava/util/Date;

    if-eqz v0, :cond_42

    .line 84
    sget-object p0, Lcom/google/common/flogger/parameter/BraceStyleParameter;->prototypeMessageFormatter:Ljava/text/MessageFormat;

    invoke-virtual {p0}, Ljava/text/MessageFormat;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/text/MessageFormat;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    .line 85
    invoke-virtual {p0, v0, v1, v2}, Ljava/text/MessageFormat;->format([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p0

    .line 86
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 87
    invoke-interface {p1, p2, p0}, Lcom/google/common/flogger/parameter/ParameterVisitor;->visitPreformatted(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 88
    :cond_42
    instance-of v0, p2, Ljava/util/Calendar;

    if-eqz v0, :cond_50

    .line 89
    sget-object v0, Lcom/google/common/flogger/parameter/DateTimeFormat;->DATETIME_FULL:Lcom/google/common/flogger/parameter/DateTimeFormat;

    invoke-virtual {p0}, Lcom/google/common/flogger/parameter/Parameter;->getFormatOptions()Lcom/google/common/flogger/backend/FormatOptions;

    move-result-object p0

    invoke-interface {p1, p2, v0, p0}, Lcom/google/common/flogger/parameter/ParameterVisitor;->visitDateTime(Ljava/lang/Object;Lcom/google/common/flogger/parameter/DateTimeFormat;Lcom/google/common/flogger/backend/FormatOptions;)V

    return-void

    .line 91
    :cond_50
    sget-object v0, Lcom/google/common/flogger/backend/FormatChar;->STRING:Lcom/google/common/flogger/backend/FormatChar;

    invoke-virtual {p0}, Lcom/google/common/flogger/parameter/Parameter;->getFormatOptions()Lcom/google/common/flogger/backend/FormatOptions;

    move-result-object p0

    invoke-interface {p1, p2, v0, p0}, Lcom/google/common/flogger/parameter/ParameterVisitor;->visit(Ljava/lang/Object;Lcom/google/common/flogger/backend/FormatChar;Lcom/google/common/flogger/backend/FormatOptions;)V

    return-void
.end method

.method public getFormat()Ljava/lang/String;
    .registers 1

    .line 97
    const-string p0, "%s"

    return-object p0
.end method
