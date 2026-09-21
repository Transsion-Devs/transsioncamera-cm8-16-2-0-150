.class public Lcom/transsion/hubsdk/api/internal/app/TranLocaleInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mLabel:Ljava/lang/String;

.field mLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .registers 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocaleInfo;->mLabel:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocaleInfo;->mLocale:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocaleInfo;->mLabel:Ljava/lang/String;

    return-object p0
.end method

.method public getLocale()Ljava/util/Locale;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocaleInfo;->mLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocaleInfo;->mLabel:Ljava/lang/String;

    return-object p0
.end method
