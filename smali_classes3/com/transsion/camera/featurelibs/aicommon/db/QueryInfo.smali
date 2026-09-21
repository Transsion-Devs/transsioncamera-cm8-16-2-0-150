.class public Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo$Builder;
    }
.end annotation


# instance fields
.field private final mOrderBy:Ljava/lang/String;

.field private final mSelection:Ljava/lang/String;

.field private final mSelectionArgs:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo$Builder;)V
    .registers 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo$Builder;->-$$Nest$fgetmSelection(Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo;->mSelection:Ljava/lang/String;

    .line 28
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo$Builder;->-$$Nest$fgetmSelectionArgs(Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo;->mSelectionArgs:[Ljava/lang/String;

    .line 29
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo$Builder;->-$$Nest$fgetmOrderBy(Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo;->mOrderBy:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo$Builder;Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo;-><init>(Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo$Builder;)V

    return-void
.end method


# virtual methods
.method public orderBy()Ljava/lang/String;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo;->mOrderBy:Ljava/lang/String;

    return-object p0
.end method

.method public selection()Ljava/lang/String;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo;->mSelection:Ljava/lang/String;

    return-object p0
.end method

.method public selectionArgs()[Ljava/lang/String;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo;->mSelectionArgs:[Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QueryInfo{mSelection=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo;->mSelection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mSelectionArgs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo;->mSelectionArgs:[Ljava/lang/String;

    .line 49
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mOrderBy=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo;->mOrderBy:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
