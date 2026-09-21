.class public Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field enable:Z

.field logStrategy:Lcom/ss/android/ugc/cut_log/LogStrategy;

.field printLevel:I

.field showThreadInfo:Z

.field tag:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy$Builder;->showThreadInfo:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy$1;)V
    .registers 2

    .line 105
    invoke-direct {p0}, Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy;
    .registers 3

    .line 137
    iget-object v0, p0, Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy$Builder;->logStrategy:Lcom/ss/android/ugc/cut_log/LogStrategy;

    if-nez v0, :cond_b

    .line 138
    new-instance v0, Lcom/ss/android/ugc/cut_log/LogcatLogStrategy;

    invoke-direct {v0}, Lcom/ss/android/ugc/cut_log/LogcatLogStrategy;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy$Builder;->logStrategy:Lcom/ss/android/ugc/cut_log/LogStrategy;

    .line 141
    :cond_b
    iget v0, p0, Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy$Builder;->printLevel:I

    if-nez v0, :cond_12

    const/4 v0, 0x3

    .line 142
    iput v0, p0, Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy$Builder;->printLevel:I

    .line 144
    :cond_12
    new-instance v0, Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy;-><init>(Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy$Builder;Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy$1;)V

    return-object v0
.end method

.method public enable(Ljava/lang/Boolean;)Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy$Builder;
    .registers 2

    .line 127
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy$Builder;->enable:Z

    return-object p0
.end method

.method public printLevel(I)Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy$Builder;
    .registers 2

    .line 132
    iput p1, p0, Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy$Builder;->printLevel:I

    return-object p0
.end method

.method public showThreadInfo(Z)Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy$Builder;
    .registers 2

    .line 117
    iput-boolean p1, p0, Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy$Builder;->showThreadInfo:Z

    return-object p0
.end method

.method public tag(Ljava/lang/String;)Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy$Builder;
    .registers 2

    .line 122
    iput-object p1, p0, Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy$Builder;->tag:Ljava/lang/String;

    return-object p0
.end method
