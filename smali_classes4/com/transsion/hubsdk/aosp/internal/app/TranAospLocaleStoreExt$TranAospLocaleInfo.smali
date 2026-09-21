.class public Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt$TranAospLocaleInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranAospLocaleInfo"
.end annotation


# instance fields
.field private mFullNameNative:Ljava/lang/String;

.field private final mId:Ljava/lang/String;

.field private final mLocale:Ljava/util/Locale;

.field private mParent:Ljava/util/Locale;

.field final synthetic this$0:Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 68
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt$TranAospLocaleInfo;->this$0:Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p2, p0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt$TranAospLocaleInfo;->mLocale:Ljava/util/Locale;

    .line 70
    iput-object p3, p0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt$TranAospLocaleInfo;->mId:Ljava/lang/String;

    .line 71
    iput-object p4, p0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt$TranAospLocaleInfo;->mFullNameNative:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFullNameNative()Ljava/lang/String;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt$TranAospLocaleInfo;->mFullNameNative:Ljava/lang/String;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt$TranAospLocaleInfo;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public getLocale()Ljava/util/Locale;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt$TranAospLocaleInfo;->mLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public getParent()Ljava/util/Locale;
    .registers 1

    .line 90
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt$TranAospLocaleInfo;->mParent:Ljava/util/Locale;

    return-object p0
.end method

.method public setParent(Ljava/util/Locale;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt$TranAospLocaleInfo;->mParent:Ljava/util/Locale;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt$TranAospLocaleInfo;->mId:Ljava/lang/String;

    return-object p0
.end method
