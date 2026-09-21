.class public Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TranLocaleInfo"
.end annotation


# instance fields
.field private mFullNameNative:Ljava/lang/String;

.field private final mId:Ljava/lang/String;

.field private final mLocale:Ljava/util/Locale;

.field private mParent:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;->mLocale:Ljava/util/Locale;

    .line 106
    iput-object p2, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;->mId:Ljava/lang/String;

    .line 107
    iput-object p3, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;->mFullNameNative:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFullNameNative()Ljava/lang/String;
    .registers 1

    .line 143
    iget-object p0, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;->mFullNameNative:Ljava/lang/String;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .registers 1

    .line 134
    iget-object p0, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public getLocale()Ljava/util/Locale;
    .registers 1

    .line 125
    iget-object p0, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;->mLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public getParent()Ljava/util/Locale;
    .registers 1

    .line 152
    iget-object p0, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;->mParent:Ljava/util/Locale;

    return-object p0
.end method

.method public setFullNameNative(Ljava/lang/String;)V
    .registers 2

    .line 170
    iput-object p1, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;->mFullNameNative:Ljava/lang/String;

    return-void
.end method

.method public setParent(Ljava/util/Locale;)V
    .registers 2

    .line 161
    iput-object p1, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;->mParent:Ljava/util/Locale;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;->mId:Ljava/lang/String;

    return-object p0
.end method
