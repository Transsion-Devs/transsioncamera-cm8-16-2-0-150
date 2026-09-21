.class public abstract Lcom/transsion/hubsdk/api/provider/TranSearchIndexablesProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field public static final DYNAMIC_INDEXABLES_RAW:Ljava/lang/String; = "dynamic_indexables_raw"

.field public static final DYNAMIC_INDEXABLES_RAW_PATH:Ljava/lang/String; = "settings/dynamic_indexables_raw"

.field public static final INDEXABLES_RAW:Ljava/lang/String; = "indexables_raw"

.field public static final INDEXABLES_RAW_PATH:Ljava/lang/String; = "settings/indexables_raw"

.field public static final INDEXABLES_XML_RES:Ljava/lang/String; = "indexables_xml_res"

.field public static final INDEXABLES_XML_RES_PATH:Ljava/lang/String; = "settings/indexables_xml_res"

.field private static final MATCH_DYNAMIC_RAW_CODE:I = 0x6

.field private static final MATCH_NON_INDEXABLE_KEYS_CODE:I = 0x3

.field private static final MATCH_RAW_CODE:I = 0x2

.field private static final MATCH_RES_CODE:I = 0x1

.field private static final MATCH_SITE_MAP_PAIRS_CODE:I = 0x4

.field private static final MATCH_SLICE_URI_PAIRS_CODE:I = 0x5

.field public static final NON_INDEXABLES_KEYS:Ljava/lang/String; = "non_indexables_key"

.field public static final NON_INDEXABLES_KEYS_PATH:Ljava/lang/String; = "settings/non_indexables_key"

.field public static final NO_KEYS_MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/non_indexables_key"

.field public static final PROVIDER_INTERFACE:Ljava/lang/String; = "android.content.action.SEARCH_INDEXABLES_PROVIDER"

.field public static final RAW_MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/indexables_raw"

.field private static final SETTINGS:Ljava/lang/String; = "settings"

.field public static final SITE_MAP_PAIRS_KEYS:Ljava/lang/String; = "site_map_pairs"

.field public static final SITE_MAP_PAIRS_PATH:Ljava/lang/String; = "settings/site_map_pairs"

.field public static final SLICE_URI_PAIRS:Ljava/lang/String; = "slice_uri_pairs"

.field public static final SLICE_URI_PAIRS_PATH:Ljava/lang/String; = "settings/slice_uri_pairs"

.field private static final TAG:Ljava/lang/String; = "IndexablesProvider"

.field public static final XML_MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/indexables_xml_res"


# instance fields
.field private mAuthority:Ljava/lang/String;

.field private mMatcher:Landroid/content/UriMatcher;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .registers 7

    .line 84
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/hubsdk/api/provider/TranSearchIndexablesProvider;->mAuthority:Ljava/lang/String;

    .line 86
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/provider/TranSearchIndexablesProvider;->mMatcher:Landroid/content/UriMatcher;

    .line 87
    iget-object v1, p0, Lcom/transsion/hubsdk/api/provider/TranSearchIndexablesProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "settings/indexables_xml_res"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 89
    iget-object v0, p0, Lcom/transsion/hubsdk/api/provider/TranSearchIndexablesProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/provider/TranSearchIndexablesProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "settings/indexables_raw"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 91
    iget-object v0, p0, Lcom/transsion/hubsdk/api/provider/TranSearchIndexablesProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/provider/TranSearchIndexablesProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "settings/non_indexables_key"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 93
    iget-object v0, p0, Lcom/transsion/hubsdk/api/provider/TranSearchIndexablesProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/provider/TranSearchIndexablesProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "settings/site_map_pairs"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 95
    iget-object v0, p0, Lcom/transsion/hubsdk/api/provider/TranSearchIndexablesProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/provider/TranSearchIndexablesProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "settings/slice_uri_pairs"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 97
    iget-object v0, p0, Lcom/transsion/hubsdk/api/provider/TranSearchIndexablesProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/provider/TranSearchIndexablesProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "settings/dynamic_indexables_raw"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 101
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    if-eqz v0, :cond_6c

    .line 104
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    if-eqz v0, :cond_64

    .line 107
    const-string v0, "android.permission.READ_SEARCH_INDEXABLES"

    iget-object v1, p2, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 111
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    return-void

    .line 108
    :cond_5c
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Provider must be protected by READ_SEARCH_INDEXABLES"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 105
    :cond_64
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Provider must grantUriPermissions"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 102
    :cond_6c
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Provider must be exported"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    .line 273
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Delete not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    .line 238
    iget-object p0, p0, Lcom/transsion/hubsdk/api/provider/TranSearchIndexablesProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_30

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2d

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2a

    const/4 v0, 0x6

    if-ne p0, v0, :cond_13

    goto :goto_2d

    .line 247
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown URI "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 245
    :cond_2a
    const-string p0, "vnd.android.cursor.dir/non_indexables_key"

    return-object p0

    .line 243
    :cond_2d
    :goto_2d
    const-string p0, "vnd.android.cursor.dir/indexables_raw"

    return-object p0

    .line 240
    :cond_30
    const-string p0, "vnd.android.cursor.dir/indexables_xml_res"

    return-object p0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3

    .line 260
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Insert not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6

    const/4 p2, 0x0

    .line 128
    :try_start_1
    iget-object p3, p0, Lcom/transsion/hubsdk/api/provider/TranSearchIndexablesProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p3

    packed-switch p3, :pswitch_data_4c

    .line 142
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown Uri "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_21
    move-exception p0

    goto :goto_41

    .line 140
    :pswitch_23
    invoke-virtual {p0, p2}, Lcom/transsion/hubsdk/api/provider/TranSearchIndexablesProvider;->queryDynamicRawData([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 138
    :pswitch_28
    invoke-virtual {p0}, Lcom/transsion/hubsdk/api/provider/TranSearchIndexablesProvider;->querySliceUriPairs()Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 136
    :pswitch_2d
    invoke-virtual {p0}, Lcom/transsion/hubsdk/api/provider/TranSearchIndexablesProvider;->querySiteMapPairs()Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 134
    :pswitch_32
    invoke-virtual {p0, p2}, Lcom/transsion/hubsdk/api/provider/TranSearchIndexablesProvider;->queryNonIndexableKeys([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 132
    :pswitch_37
    invoke-virtual {p0, p2}, Lcom/transsion/hubsdk/api/provider/TranSearchIndexablesProvider;->queryRawData([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 130
    :pswitch_3c
    invoke-virtual {p0, p2}, Lcom/transsion/hubsdk/api/provider/TranSearchIndexablesProvider;->queryXmlResources([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_40
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_40} :catch_49
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_40} :catch_21

    return-object p0

    .line 147
    :goto_41
    const-string p1, "IndexablesProvider"

    const-string p3, "Provider querying exception:"

    invoke-static {p1, p3, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p2

    :catch_49
    move-exception p0

    .line 145
    throw p0

    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_37
        :pswitch_32
        :pswitch_2d
        :pswitch_28
        :pswitch_23
    .end packed-switch
.end method

.method public queryDynamicRawData([Ljava/lang/String;)Landroid/database/Cursor;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract queryNonIndexableKeys([Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract queryRawData([Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public querySiteMapPairs()Landroid/database/Cursor;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public querySliceUriPairs()Landroid/database/Cursor;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract queryXmlResources([Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    .line 288
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Update not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
