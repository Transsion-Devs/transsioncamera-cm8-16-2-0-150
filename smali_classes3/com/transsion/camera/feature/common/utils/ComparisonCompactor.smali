.class public Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DELTA_END:Ljava/lang/String; = "]"

.field private static final DELTA_START:Ljava/lang/String; = "["

.field private static final ELLIPSIS:Ljava/lang/String; = "..."


# instance fields
.field private fActual:Ljava/lang/String;

.field private fContextLength:I

.field private fExpected:Ljava/lang/String;

.field private fPrefix:I

.field private fSuffix:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->fContextLength:I

    .line 17
    iput-object p2, p0, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->fExpected:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->fActual:Ljava/lang/String;

    return-void
.end method

.method private areStringsEqual()Z
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->fExpected:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->fActual:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private compactString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->fPrefix:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->fSuffix:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 37
    iget v0, p0, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->fPrefix:I

    if-lez v0, :cond_3c

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->computeCommonPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 39
    :cond_3c
    iget v0, p0, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->fSuffix:I

    if-lez v0, :cond_54

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->computeCommonSuffix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_54
    return-object p1
.end method

.method private computeCommonPrefix()Ljava/lang/String;
    .registers 5

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->fPrefix:I

    iget v2, p0, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->fContextLength:I

    if-le v1, v2, :cond_e

    const-string v1, "..."

    goto :goto_10

    :cond_e
    const-string v1, ""

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->fExpected:Ljava/lang/String;

    iget v2, p0, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->fPrefix:I

    iget v3, p0, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->fContextLength:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget p0, p0, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->fPrefix:I

    invoke-virtual {v1, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private computeCommonSuffix()Ljava/lang/String;
    .registers 6

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->fExpected:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->fSuffix:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->fContextLength:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->fExpected:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->fExpected:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->fSuffix:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->fExpected:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v2, p0, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->fSuffix:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->fExpected:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget p0, p0, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->fContextLength:I

    sub-int/2addr v2, p0

    if-ge v0, v2, :cond_48

    const-string p0, "..."

    goto :goto_4a

    :cond_48
    const-string p0, ""

    :goto_4a
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private findCommonPrefix()V
    .registers 5

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->fPrefix:I

    .line 46
    iget-object v0, p0, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->fExpected:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->fActual:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 47
    :goto_13
    iget v1, p0, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->fPrefix:I

    if-ge v1, v0, :cond_2f

    .line 48
    iget-object v2, p0, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->fExpected:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->fActual:Ljava/lang/String;

    iget v3, p0, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->fPrefix:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_28

    goto :goto_2f

    .line 47
    :cond_28
    iget v1, p0, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->fPrefix:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->fPrefix:I

    goto :goto_13

    :cond_2f
    :goto_2f
    return-void
.end method

.method private findCommonSuffix()V
    .registers 5

    .line 54
    iget-object v0, p0, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->fExpected:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 55
    iget-object v1, p0, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->fActual:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 56
    :goto_10
    iget v2, p0, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->fPrefix:I

    if-lt v1, v2, :cond_2a

    if-lt v0, v2, :cond_2a

    .line 57
    iget-object v2, p0, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->fExpected:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->fActual:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_25

    goto :goto_2a

    :cond_25
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    .line 60
    :cond_2a
    :goto_2a
    iget-object v1, p0, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->fExpected:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->fSuffix:I

    return-void
.end method

.method private static format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_1a

    .line 79
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1a

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1c

    .line 81
    :cond_1a
    const-string p0, ""

    :goto_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "expected:<"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "> but was:<"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public compact(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 22
    iget-object v0, p0, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->fExpected:Ljava/lang/String;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->fActual:Ljava/lang/String;

    if-eqz v0, :cond_26

    invoke-direct {p0}, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->areStringsEqual()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_26

    .line 27
    :cond_f
    invoke-direct {p0}, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->findCommonPrefix()V

    .line 28
    invoke-direct {p0}, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->findCommonSuffix()V

    .line 29
    iget-object v0, p0, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->fExpected:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->compactString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->fActual:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->compactString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 32
    invoke-static {p1, v0, p0}, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 25
    :cond_26
    :goto_26
    iget-object v0, p0, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->fExpected:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->fActual:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Lcom/transsion/camera/feature/common/utils/ComparisonCompactor;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
