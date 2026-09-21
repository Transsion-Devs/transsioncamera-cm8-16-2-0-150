.class public Lcom/ss/android/ugc/cut_log/AndroidLogAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ugc/cut_log/LogAdapter;


# instance fields
.field private final formatStrategy:Lcom/ss/android/ugc/cut_log/FormatStrategy;


# direct methods
.method public constructor <init>(Lcom/ss/android/ugc/cut_log/FormatStrategy;)V
    .registers 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/ss/android/ugc/cut_log/AndroidLogAdapter;->formatStrategy:Lcom/ss/android/ugc/cut_log/FormatStrategy;

    return-void
.end method


# virtual methods
.method public enable()Z
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/ss/android/ugc/cut_log/AndroidLogAdapter;->formatStrategy:Lcom/ss/android/ugc/cut_log/FormatStrategy;

    invoke-interface {p0}, Lcom/ss/android/ugc/cut_log/FormatStrategy;->enable()Z

    move-result p0

    return p0
.end method

.method public getPrintLevel()I
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/ss/android/ugc/cut_log/AndroidLogAdapter;->formatStrategy:Lcom/ss/android/ugc/cut_log/FormatStrategy;

    invoke-interface {p0}, Lcom/ss/android/ugc/cut_log/FormatStrategy;->getPrintLevel()I

    move-result p0

    return p0
.end method

.method public isLoggable(ILjava/lang/String;)Z
    .registers 3

    const/4 p0, 0x1

    return p0
.end method

.method public log(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 15
    iget-object p0, p0, Lcom/ss/android/ugc/cut_log/AndroidLogAdapter;->formatStrategy:Lcom/ss/android/ugc/cut_log/FormatStrategy;

    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/ugc/cut_log/FormatStrategy;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
