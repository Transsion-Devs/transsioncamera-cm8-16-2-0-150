.class public Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mOrderBy:Ljava/lang/String;

.field private mSelection:Ljava/lang/String;

.field private mSelectionArgs:[Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmOrderBy(Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo$Builder;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo$Builder;->mOrderBy:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelection(Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo$Builder;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo$Builder;->mSelection:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectionArgs(Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo$Builder;)[Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo$Builder;->mSelectionArgs:[Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo;
    .registers 3

    .line 78
    new-instance v0, Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo;-><init>(Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo$Builder;Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo-IA;)V

    return-object v0
.end method

.method public orderBy(Ljava/lang/String;)Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo$Builder;
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo$Builder;->mOrderBy:Ljava/lang/String;

    return-object p0
.end method

.method public selection(Ljava/lang/String;)Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo$Builder;
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo$Builder;->mSelection:Ljava/lang/String;

    return-object p0
.end method

.method public selectionArgs([Ljava/lang/String;)Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo$Builder;
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo$Builder;->mSelectionArgs:[Ljava/lang/String;

    return-object p0
.end method
