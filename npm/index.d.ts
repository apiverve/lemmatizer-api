declare module '@apiverve/lemmatizer' {
  export interface lemmatizerOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface lemmatizerResponse {
    status: string;
    error: string | null;
    data: TextLemmatizerData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface TextLemmatizerData {
      found:  number | null;
      lemmas: Lemmas;
  }
  
  interface Lemmas {
      cat:  number | null;
      ran:  number | null;
      door: number | null;
  }

  export default class lemmatizerWrapper {
    constructor(options: lemmatizerOptions);

    execute(callback: (error: any, data: lemmatizerResponse | null) => void): Promise<lemmatizerResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: lemmatizerResponse | null) => void): Promise<lemmatizerResponse>;
    execute(query?: Record<string, any>): Promise<lemmatizerResponse>;
  }
}
